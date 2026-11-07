import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../services/api_services_product.dart';

class ProductProvider extends ChangeNotifier {
  final ApiServiceProducts _api = ApiServiceProducts();

  List<Product> _all = [];
  List<Product> _products = [];
  bool _loading = false;
  String? _error;
  String _selectedCategory = '';
  String _query = '';

  List<Product> get product => _products;
  List<String> get categoryList =>
      _all.map((p) => p.category ?? '').where((c) => c.isNotEmpty).toSet().toList()
        ..sort();
  bool get loading => _loading;
  int get total => _products.length;
  int get skip => 0;
  String get selectedCategory => _selectedCategory;
  String? get error => _error;

  void _apply() {
    _products = _all.where((p) {
      final okCat = _selectedCategory.isEmpty || p.category == _selectedCategory;
      final okQ = _query.isEmpty ||
          (p.title ?? '').toLowerCase().contains(_query.toLowerCase());
      return okCat && okQ;
    }).toList();
  }

  Future<void> _reload() async {
    _all = await _api.getAllProducts();
    _apply();
  }

  Future<void> fetchProduct({int limit = 30, int skip = 0}) async {
    _loading = true;
    _error = null;
    _selectedCategory = '';
    _query = '';
    notifyListeners();
    try {
      await _reload();
    } catch (e) {
      _error = e.toString();
    }
    _loading = false;
    notifyListeners();
  }

  // Kategori diambil dari data produk, jadi tidak perlu request lagi
  Future<void> fetchCategories() async {}

  Future<void> searchProducts(String query) async {
    _query = query;
    _apply();
    notifyListeners();
  }

  Future<void> filterByCategory(String category) async {
    _selectedCategory = category;
    _apply();
    notifyListeners();
  }

  Future<void> sortProducts(String sortBy, String order) async {
    _products.sort((a, b) {
      final int r = sortBy == 'price'
          ? (a.price ?? 0).compareTo(b.price ?? 0)
          : (a.title ?? '').compareTo(b.title ?? '');
      return order == 'desc' ? -r : r;
    });
    notifyListeners();
  }

  // API hanya menerima 3 kolom: title, price, category
  Map<String, dynamic> _simple(Product p) => {
        'title': p.title,
        'price': p.price,
        'category': p.category,
      };

  Future<bool> addProduct(Product p) async {
    try {
      await _api.addProduct(_simple(p));
      await _reload();
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> updateProduct(int id, Product updated) async {
    try {
      await _api.updateProduct(id, _simple(updated));
      await _reload();
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> deleteProduct(int id) async {
    try {
      await _api.deleteProduct(id);
      await _reload();
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString();
      notifyListeners();
      return false;
    }
  }
}

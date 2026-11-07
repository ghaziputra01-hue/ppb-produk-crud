import 'dart:convert';
import 'package:dio/dio.dart';

import '../models/product_model.dart';

class ApiServiceProducts {
  // Edge / Chrome (web) : http://localhost/products_api/api.php
  // Emulator Android    : http://10.0.2.2/products_api/api.php
  // HP asli             : http://IP_LAPTOP/products_api/api.php
  static const String baseUrl = 'http://localhost/products_api/api.php';

  final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  // MySQL/PHP sering mengembalikan angka sebagai String dan kolom array
  // sebagai teks JSON, jadi dirapikan dulu sebelum masuk ke model.
  Map<String, dynamic> _fix(Map e) {
    final m = Map<String, dynamic>.from(e);
    for (final k in ['id', 'stock', 'weight', 'minimumOrderQuantity']) {
      if (m[k] is String) m[k] = int.tryParse(m[k]);
    }
    for (final k in ['price', 'discountPercentage', 'rating']) {
      if (m[k] is String) m[k] = double.tryParse(m[k]);
    }
    for (final k in ['tags', 'images', 'dimensions', 'reviews', 'meta']) {
      if (m[k] is String) {
        try {
          m[k] = jsonDecode(m[k]);
        } catch (_) {
          m[k] = null;
        }
      }
    }
    return m;
  }

  // READ (semua)
  Future<List<Product>> getAllProducts() async {
    final res = await _dio.get(baseUrl);
    final data = res.data;
    final list = data is List ? data : (data['products'] as List);
    return list.map((e) => Product.fromJson(_fix(e))).toList();
  }

  // READ (satu)
  Future<Product> getProduct(int id) async {
    final res = await _dio.get(baseUrl, queryParameters: {'id': id});
    return Product.fromJson(_fix(res.data));
  }

  // CREATE
  Future<void> addProduct(Map<String, dynamic> data) async {
    await _dio.post(baseUrl, data: data);
  }

  // UPDATE
  Future<void> updateProduct(int id, Map<String, dynamic> data) async {
    await _dio.put(baseUrl, queryParameters: {'id': id}, data: data);
  }

  // DELETE
  Future<void> deleteProduct(int id) async {
    await _dio.delete(baseUrl, queryParameters: {'id': id});
  }
}

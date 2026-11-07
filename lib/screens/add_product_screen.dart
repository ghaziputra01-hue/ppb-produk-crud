import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';
import '../providers/product_providers.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _price = TextEditingController();
  final _category = TextEditingController();
  bool _isLoading = false;

  String? _required(String? v) =>
      (v == null || v.trim().isEmpty) ? 'Tidak boleh kosong' : null;

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);

    final ok = await context.read<ProductProvider>().addProduct(
      Product(
        title: _title.text.trim(),
        price: double.tryParse(_price.text) ?? 0,
        category: _category.text.trim(),
      ),
    );

    if (!mounted) return;
    setState(() => _isLoading = false);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(ok ? 'Berhasil menambah produk' : 'Gagal menambah produk')),
    );
    if (ok) context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Produk')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _title,
                decoration: const InputDecoration(labelText: 'Judul Produk'),
                validator: _required,
              ),
              TextFormField(
                controller: _price,
                decoration: const InputDecoration(labelText: 'Harga (contoh: 9.99)'),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                validator: _required,
              ),
              TextFormField(
                controller: _category,
                decoration: const InputDecoration(labelText: 'Kategori (contoh: beauty)'),
                validator: _required,
              ),
              const SizedBox(height: 20),
              _isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(onPressed: _submit, child: const Text('Simpan Produk')),
            ],
          ),
        ),
      ),
    );
  }
}

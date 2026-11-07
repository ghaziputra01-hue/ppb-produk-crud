<?php
// Mengisi kolom thumbnail di tabel products dengan gambar dari DummyJSON.
// Jalankan SATU KALI lewat browser: http://localhost/products_api/update_thumbnail.php

$conn = new mysqli("localhost", "root", "", "db_produk");
if ($conn->connect_error) {
    die("Koneksi database gagal. Pastikan MySQL di XAMPP sudah Start.");
}

$json = file_get_contents("https://dummyjson.com/products?limit=0&select=title,thumbnail");
if ($json === false) {
    die("Gagal mengambil data dari DummyJSON. Cek koneksi internet.");
}
$data = json_decode($json, true)["products"];

$stmt = $conn->prepare("UPDATE products SET thumbnail = ? WHERE title = ?");
foreach ($data as $p) {
    $stmt->bind_param("ss", $p["thumbnail"], $p["title"]);
    $stmt->execute();
}

echo "Selesai: " . count($data) . " produk diperbarui";

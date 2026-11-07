<?php
// Jalankan SEKALI lewat browser: http://localhost/products_api/import.php
// Simpan di: C:\xampp2\htdocs\products_api\import.php

$conn = new mysqli("localhost", "root", "", "db_produk");
if ($conn->connect_error) {
    die("Koneksi database gagal: " . $conn->connect_error);
}

$json = file_get_contents("https://dummyjson.com/products?limit=0");
if ($json === false) {
    die("Gagal mengambil data dari DummyJSON. Cek koneksi internet.");
}

$data  = json_decode($json, true);
$stmt  = $conn->prepare("INSERT IGNORE INTO products (id, title, price, category) VALUES (?, ?, ?, ?)");
$total = 0;

foreach ($data["products"] as $p) {
    $stmt->bind_param("isds", $p["id"], $p["title"], $p["price"], $p["category"]);
    $stmt->execute();
    $total += $stmt->affected_rows > 0 ? 1 : 0;
}

echo "Import selesai. Data baru masuk: " . $total;

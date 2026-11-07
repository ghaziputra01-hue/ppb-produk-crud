<?php
// API CRUD produk. Simpan di: C:\xampp2\htdocs\products_api\api.php
header("Content-Type: application/json; charset=utf-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

$method = $_SERVER["REQUEST_METHOD"];
if ($method === "OPTIONS") { exit; }

$conn = new mysqli("localhost", "root", "", "db_produk");
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(["error" => "Koneksi database gagal"]);
    exit;
}

$id   = isset($_GET["id"]) ? (int)$_GET["id"] : 0;
$body = json_decode(file_get_contents("php://input"), true) ?? [];

switch ($method) {

    // READ: semua produk, detail (?id=1), atau pencarian (?q=kata)
    case "GET":
        if ($id) {
            $stmt = $conn->prepare("SELECT * FROM products WHERE id = ?");
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $row = $stmt->get_result()->fetch_assoc();
            if (!$row) { http_response_code(404); echo json_encode(["error" => "Produk tidak ditemukan"]); break; }
            echo json_encode($row);
        } else {
            $q = "%" . ($_GET["q"] ?? "") . "%";
            $stmt = $conn->prepare("SELECT * FROM products WHERE title LIKE ? OR category LIKE ? ORDER BY id DESC");
            $stmt->bind_param("ss", $q, $q);
            $stmt->execute();
            echo json_encode($stmt->get_result()->fetch_all(MYSQLI_ASSOC));
        }
        break;

    // CREATE: body JSON {title, price, category}
    case "POST":
        $stmt = $conn->prepare("INSERT INTO products (title, price, category) VALUES (?, ?, ?)");
        $stmt->bind_param("sds", $body["title"], $body["price"], $body["category"]);
        $stmt->execute();
        http_response_code(201);
        echo json_encode(["message" => "Produk ditambahkan", "id" => $conn->insert_id]);
        break;

    // UPDATE: ?id=1 + body JSON {title, price, category}
    case "PUT":
        $stmt = $conn->prepare("UPDATE products SET title = ?, price = ?, category = ? WHERE id = ?");
        $stmt->bind_param("sdsi", $body["title"], $body["price"], $body["category"], $id);
        $stmt->execute();
        echo json_encode(["message" => "Produk diperbarui"]);
        break;

    // DELETE: ?id=1
    case "DELETE":
        $stmt = $conn->prepare("DELETE FROM products WHERE id = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        echo json_encode(["message" => "Produk dihapus"]);
        break;

    default:
        http_response_code(405);
        echo json_encode(["error" => "Method tidak didukung"]);
}

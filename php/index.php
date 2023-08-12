<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webshop";

// MySQL'e bağlanma
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Bağlantıyı kontrol etme
if (!$conn) {
    die("MySQL'e bağlanırken hata oluştu: " . mysqli_connect_error());
}

// "products" tablosundaki verileri çekme
$sql = "SELECT * FROM products";
$result = mysqli_query($conn, $sql);

// Verileri HTML listesi olarak listeleme
if (mysqli_num_rows($result) > 0) {
    echo "<ul>";
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<li>";
        echo "<strong>Name:</strong> " . $row['name'] . "<br>";
        echo "<strong>Description:</strong> <div style='white-space:pre'>" . $row["description"] . "</div>";
        echo "<strong>Price:</strong> $" . $row['price'] . "<br>";
        echo "<img style='width:200px' src='" . $row['image_url'] . "' alt='Product Image'><br>";
        echo "</li>";
    }
    echo "</ul>";
} else {
    echo "Veritabanında hiç ürün bulunamadı.";
}

// MySQL bağlantısını kapatma
mysqli_close($conn);
?>
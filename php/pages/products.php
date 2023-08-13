<?php include '../components/header-template.php'; ?>

<?php
// Fetch all products
$sqlProducts = "SELECT * FROM products";
$result = $conn->query($sqlProducts);

$products = array(); // Array to store fetched products

if ($result->num_rows > 0) {
	while ($row = $result->fetch_assoc()) {
		$products[] = $row; // Store each product in the array
	}
}

?>

<div class="row m-1 g-2">
	<h1 class="my-4 text-center">Producten</h1>
	<?php
	foreach ($products as $product) {
		include '../components/product-card.php';
	}
	?>
</div>

<?php include '../components/footer-template.php'; ?>
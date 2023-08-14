<?php include '../components/header-template.php'; ?>

<?php

try {
    $productId = intval($_GET['id']); // prevent sql injection from query string
} catch (\Throwable $th) {
    die("Error: " . $th->getMessage());
}

$result = $conn->query("SELECT * FROM products WHERE id=" . ($productId > 0 ? strval($productId) : "1"));

$product = array(); // Array to store fetched products

if ($result->num_rows > 0) {
    $product = $result->fetch_assoc();
}

?>

<h1 class="mt-4 mb-5 text-center">
    <?php echo $product['name'] ?>
</h1>

<div class="row">
    <div class="col-md-6">
        <img src="<?php echo $product['image_url'] ?>" alt="Product Image" class="img-fluid"
            style="border-radius: 10px;">

    </div>
    <div class="col-md-6">
        <h2>
            <?php echo $product['price'] ?> $
        </h2>
        <p style="font-size: 16px; color: #666; white-space: pre-line">
            <?php echo $product['description'] ?>
        </p>

        <form>
            <div class="form-group">
                <label for="colorSelection">Color Selection:</label>
                <select class="form-control" id="colorSelection" style="border: 1px solid #ccc; padding: 5px;">
                    <option value="blue">Blue</option>
                    <option value="red">Red</option>
                    <option value="green">Green</option>
                    <option value="yellow">Yellow</option>
                </select>

            </div>
        </form>
        <div class="mt-3 text-end">
            <button type="button" class="btn btn-primary px-3 py-2">
                Add to Basket
            </button>
            <button type="button" class="btn btn-success px-3 py-2">
                Buy Now
            </button>

        </div>
    </div>
</div>

<?php include '../components/footer-template.php'; ?>
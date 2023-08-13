<!--bootstrap card for products-->
<div class="col-12 col-md-6 col-lg-4 d-flex align-items-stretch">
    <div class="card text-bg-dark d-flex flex-column">
        <img style="height: 250px; object-fit: cover;" src="<?php echo $product['image_url']; ?>"
            class="card-img-top p-2" alt="...">
        <div class="card-body d-flex flex-column">
            <h5 class="card-title">
                <?php echo $product['name']; ?>
            </h5>

            <?php echo
                "<div class='card-text' style='white-space:pre-line'>"
                . $product['description']
                . "</div>";
            ?>

            <div class="mt-auto d-flex flex-column">
                <a href="/pages/single-product.php?id=<?php echo $product['id']; ?>"
                    class="btn btn-primary mt-3 align-self-center">
                    Go product
                </a>
            </div>
        </div>
    </div>
</div>
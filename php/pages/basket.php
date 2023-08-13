<?php include '../components/header-template.php'; ?>

<h1 class="my-4 text-center">Cart Page</h1>

<table class="table">
    <thead>
        <tr>
            <th>#</th>
            <th>Product Name</th>
            <th>Price</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>1</th>
            <td>Pencil</td>
            <td>10.00 $</td>
        </tr>
        <tr>
            <th>2</th>
            <td>Notebook</td>
            <td>15.00 $</td>
        </tr>
        <tr>
            <th>3</th>
            <td>Book</td>
            <td>25.00 $</td>
        </tr>
    </tbody>
    <tfoot>
        <tr>
            <th colspan="2" class="text-end">Total:</th>
            <td>50.00 $</td>
        </tr>
        <tr>
            <td colspan="2" class="text-end border-0"> </td>
            <td class="border-0">
                <button class="btn btn-primary px-3 mt-2">Buy Now</button>
            </td>
        </tr>
    </tfoot>
</table>

<?php include '../components/footer-template.php'; ?>
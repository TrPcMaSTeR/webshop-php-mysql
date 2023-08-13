<?php include '../components/header-template.php'; ?>

<h1 class="my-4 text-center">User Profile</h1>

<form>
    <div class="d-flex flex-column align-items-center justify-content-center">
        <div class="col-6 mb-3 d-block form-floating">
            <input type="text" class="form-control" id="floatingInput" placeholder="name">
            <label for="floatingInput">Name</label>
        </div>
        <div class="col-6 mb-3 form-floating">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Email address</label>
        </div>
        <div class="col-6 mb-3 form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>
        <button type="submit" class="mt-5 col-4 btn btn-primary">Update</button>
    </div>
</form>

<?php include '../components/footer-template.php'; ?>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Gleb Ivashyn</title>
    <!--Bootstrap css and js -->
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <script src="bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>

    <!--internal js files-->
    <script src="js/formValidator.js" defer></script>

</head>

<body>
<header class="card-header">
    <h1>User Form</h1>
</header>
<main class="card-body">
    <div class="card-body">
        <h3>User Form:</h3>
<%--        onsubmit="return false"--%>
        <form class="col-md-3 needs-validation" id="form" name="form" action="register" method="post" novalidate>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter username"
                       minlength="5" maxlength="15" autocomplete="off" required>
                <div class="invalid-feedback">
                    Please enter a username with at least 5 and maximum 15 characters!
                </div>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="text" class="form-control" id="password" name="password" placeholder="Enter password"
                       minlength="8" maxlength="15" autocomplete="off" required>
                <div class="invalid-feedback">
                    Please enter a password from 8 to 15 characters long!
                </div>
            </div>
            <button type="submit" class="btn btn-primary" id="submit">Submit</button>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-striped table-hover table-bordered " id="table">
            <thead>
            <tr>
                <th scope="col" class="col-md-1">#</th>
                <th scope="col" class="col-md-1">Username</th>
                <th scope="col" class="col-md-1">Password</th>
                <th scope="col" class="col-md-2">edit</th>
                <th scope="col" class="col-md-2">delete</th>
            </tr>
            </thead>
            <tbody id="tbody">
            <tr>

            </tr>
            </tbody>
        </table>
    </div>
</main>
</body>
</html>
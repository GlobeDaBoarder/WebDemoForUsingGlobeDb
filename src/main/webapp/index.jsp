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
    <script src="js/main.js" defer></script>

</head>

<body>
<header class="card-header">
    <h1>Gleb Ivahyn</h1>
</header>
<main class="card-body">
    <div class="card-body">
        <h3>City project Form:</h3>
        <form class="col-md-3 needs-validation" id="form" onsubmit="return false" novalidate>
            <div class="form-group">
                <label for="projectName">Project name:</label>
                <input type="text" class="form-control" id="projectName" placeholder="Enter project name"
                       minlength="5" maxlength="15" autocomplete="off" required>
                <div class="invalid-feedback">
                    Please enter a project name with at least 5 and maximum 15 characters!
                </div>
            </div>
            <div class="form-group">
                <label for="city">City:</label>
                <input type="text" class="form-control" id="city" placeholder="Enter city"
                       minlength="5" maxlength="15" autocomplete="off" required>
                <div class="invalid-feedback">
                    Please enter a city name from 5 to 15 characters long!
                </div>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea  class="form-control" id="description" rows="4" placeholder="Enter description"
                           minlength="5" maxlength="500" autocomplete="off" required></textarea>
                <div class="invalid-feedback">
                    Description should contain from 5 to 500 characters!
                </div>
            </div>
            <button type="submit" class="btn btn-primary" id="submit">Submit</button>
        </form>
    </div>
</main>
</body>
</html>
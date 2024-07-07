<?php
include("connection.php");
include("functions.php");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DSWD Form</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/paper.css">
    
    <style>
        @page {
            size: letter
        }
    </style>
</head>

<body class="letter">
    <section class="sheet padding-10mm">
        <article class="ce-page">
            <header>CERTIFICATE OF ELIGIBILITY</header>
        </article>
    </section>

    <section class="sheet padding-10mm">
        <article class="gis-page">
            <header>GENERAL INTAKE SHEET</header>
        </article>
    </section>

    <div class="form-btns">
        <button type="button" class="btn btn-secondary" onclick="printForm()"><i class="fa-solid fa-print"></i>Print</button>
        <a href="dswd-form.php" type="button" class="btn btn-secondary"><i class="fa-solid fa-xmark"></i>Close</a>
    </div>

    <!-- print the form -->
    <script>
        function printForm() {
            window.print();
        }
    </script>
</body>

</html>
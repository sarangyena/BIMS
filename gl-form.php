<?php
include("connection.php");
include("functions.php");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GL Form</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/paper.css">

    <style>
        @page {
            size: A4
        }
    </style>
</head>

<body class="A4">
    <section class="sheet padding-10mm">
        <article class="gl-page">
            <header>GUARANTEE LETTER</header>
            
        </article>
    </section>

    <div class="form-btns">
        <button type="button" class="btn btn-secondary" onclick="printForm()"><i class="fa-solid fa-print"></i>Print</button>
        <a href="gl-form.php" type="button" class="btn btn-secondary"><i class="fa-solid fa-xmark"></i>Close</a>
    </div>

    <!-- print the form -->
    <script>
        function printForm() {
            window.print();
        }
    </script>
</body>

</html>
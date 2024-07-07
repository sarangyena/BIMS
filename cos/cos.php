<?php 

session_start();


    include("../connection.php");
    include("../functions.php");

$user_data = check_login($con);

if ($_SESSION['usertype'] != 'cos') {
    header("location: ../logout.php");
}

?>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <meta name="viewport" content="width=device-width, initial-scale=1">


        <title>Chief of Staff</title>

        <!-- CSS FILES -->        
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <link href="../css/bootstrap-icons.css" rel="stylesheet">

        <link href="../css/maincss.css" rel="stylesheet">


        

    </head>
    
    <body id="section_1">

            <section class="section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-10 col-12 text-center mx-auto">
                            <h2 class="mb-5"> <b> Chief of Staff Dashboard </b> </h2>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="featured-block d-flex justify-content-center align-items-center">
                                <a href="cosguarantee.php" class="d-block">
                                    <img src="../images/icons/guarantee.png" class="featured-block-image img-fluid" alt="">

                                    <p class="featured-block-text"><strong>Guarantee</strong> Letter</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                            <div class="featured-block d-flex justify-content-center align-items-center">
                                <a href="cosmedical.php" class="d-block">
                                    <img src="../images/icons/medical.png" class="featured-block-image img-fluid" alt="">

                                    <p class="featured-block-text"><strong>Medical</strong> Assistance</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                            <div class="featured-block d-flex justify-content-center align-items-center">
                                <a href="cosburial.php" class="d-block">
                                    <img src="../images/icons/burial.png" class="featured-block-image img-fluid" alt="">

                                    <p class="featured-block-text"><strong>Burial</strong> Assistance</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="featured-block d-flex justify-content-center align-items-center">
                                <a href="cosfinancial.php" class="d-block">
                                    <img src="../images/icons/education.png" class="featured-block-image img-fluid" alt="">

                                    <p class="featured-block-text"><strong>Financial</strong> Assistance</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="featured-block d-flex justify-content-center align-items-center">
                                <a href="coseducational.php" class="d-block">
                                    <img src="../images/icons/education.png" class="featured-block-image img-fluid" alt="">

                                    <p class="featured-block-text"><strong>Educational</strong> Assistance</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="featured-block d-flex justify-content-center align-items-center">
                                <a href="../logout.php" class="d-block">
                                    <img src="../images/icons/logout.png" class="featured-block-image img-fluid" alt="">

                                    <p class="featured-block-text"><strong>Log</strong> Out</p>
                                </a>
                            </div>
                        </div>
                </div>
            </section>


        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/click-scroll.js"></script>
        <script src="js/counter.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>
<?php
session_start();

include("../connection.php");
include("../functions.php");

$user_data = check_login($con);

if ($_SESSION['usertype'] != 'officehead') {
    header("location: ../logout.php");
    exit;
}

error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bims_db";

// Create connection
$con = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

$tables = [
    "guarantee" => "gstatus",
    "medical" => "mstatus",
    "burial" => "bstatus",
    "financial" => "fstatus",
    "educational" => "estatus"
];
$data = array();

foreach ($tables as $table => $status_column) {
    $sql = "SELECT id, amount, datecreated FROM $table WHERE $status_column = 'Approved'";
    $result = $con->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $data[$table][] = $row;
        }
    } else {
        $data[$table] = [];
    }
}

$con->close();
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Office Head Dashboard</title>

    <!-- CSS FILES -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="../css/stylecss.css" rel="stylesheet">
    <style>
        @media print {
            body * {
                visibility: hidden;
            }
            .print-container, .print-container * {
                visibility: visible;
            }
            .print-container {
                position: absolute;
                left: 0;
                top: 0;
                width: 100%;
                padding: 0 20px;
            }
            .panel {
                page-break-inside: avoid;
            }
         }

            .panel-body {
                overflow: hidden;
            }
            canvas {
                width: 100% !important;
                height: auto !important;
            }
            .navbar-toggler {
                border: none;
            }
            .navbar-toggler-icon {
                background-image: none;
                font-size: 24px;
                color: #333;
            }
            .btn-excel {
              background-color: #89ce00;
              border-color: #89ce00;
            }

            .btn-excel:hover {
              background-color: #5ba300;
              border-color: #5ba300;
            }
    </style>
</head>

<body>
    <header class="site-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12 d-flex flex-wrap">
                    <p class="d-flex me-4 mb-0"></p>
                    <p class="d-flex mb-0"></p>
                </div>
                <div class="col-lg-3 col-12 ms-auto d-lg-block d-none">
                    <ul class="social-icon"></ul>
                </div>
            </div>
        </div>
    </header>
    <nav class="navbar navbar-expand-lg bg-light shadow-lg">
        <div class="container">
            <a class="navbar-brand" href="officehead.php">
                <img src="../images/batangkankaloologo.png" class="logo img-fluid" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item ms-3">
                        <a class="nav-link custom-btn custom-border-btn btn" href="../logout.php">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <section class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-12 text-center mx-auto">
                    <h2 class="mb-5"><b>Office Head Dashboard</b></h2>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="box">
                        <div class="box-header">
                            <div style="padding:10px;">
                                <form action="export.php" method="post">
                                    <button class="btn btn-excel btn-sm" type="submit" name="export">
                                        <i class="fa fa-file-excel-o" aria-hidden="true"></i> Export to Excel
                                    </button>
                                </form>
                                <br>
                                <button class="btn btn-primary btn-sm" onclick="window.print();">
                                    <i class="fa fa-print" aria-hidden="true"></i> Print Graphs
                                </button>
                            </div>
                        </div>
                        <div class="box-body table-responsive">
                            <div class="row print-container">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Beneficiaries Level Throughout the Week
                                        </div>
                                        <div class="panel-body">
                                            <canvas id="bar-chart1"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Beneficiaries Level Throughout the Month
                                        </div>
                                        <div class="panel-body">
                                            <canvas id="bar-chart2"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Beneficiaries Level Throughout the Year
                                        </div>
                                        <div class="panel-body">
                                            <canvas id="bar-chart3"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Total Cost Throughout the Week
                                        </div>
                                        <div class="panel-body">
                                            <canvas id="donut-chart"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Total Cost Level Throughout the Month
                                        </div>
                                        <div class="panel-body">
                                            <canvas id="bar-chart4"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Total Cost Level Throughout the Year
                                        </div>
                                        <div class="panel-body">
                                            <canvas id="bar-chart5"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- JAVASCRIPT FILES -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        $(document).ready(function() {
            const data = <?php echo json_encode($data); ?>;
            console.log('Data fetched successfully:', data);

            const processDate = (dateStr) => {
                const date = new Date(dateStr);
                return date;
            }

            const filterByDateRange = (data, startDate, endDate) => {
                return data.filter(item => {
                    const date = processDate(item.datecreated);
                    return date >= startDate && date <= endDate;
                });
            }

            const currentDate = new Date();
            const startOfWeek = new Date(currentDate);
            startOfWeek.setDate(currentDate.getDate() - currentDate.getDay());
            const startOfMonth = new Date(currentDate.getFullYear(), currentDate.getMonth(), 1);
            const startOfYear = new Date(currentDate.getFullYear(), 0, 1);

            let weeklyData = [];
            let monthlyData = [];
            let yearlyData = [];
            let weeklyData1 = [];
            let monthlyData1 = [];
            let yearlyData1 = [];

            for (let table in data) {
                weeklyData.push({
                    label: table.charAt(0).toUpperCase() + table.slice(1),
                    count: filterByDateRange(data[table], startOfWeek, currentDate).length,
                    amount: filterByDateRange(data[table], startOfWeek, currentDate).reduce((sum, item) => sum + parseFloat(item.amount), 0)
                });

                monthlyData.push({
                    label: table.charAt(0).toUpperCase() + table.slice(1),
                    count: filterByDateRange(data[table], startOfMonth, currentDate).length,
                    amount: filterByDateRange(data[table], startOfMonth, currentDate).reduce((sum, item) => sum + parseFloat(item.amount), 0)
                });

                yearlyData.push({
                    label: table.charAt(0).toUpperCase() + table.slice(1),
                    count: filterByDateRange(data[table], startOfYear, currentDate).length,
                    amount: filterByDateRange(data[table], startOfYear, currentDate).reduce((sum, item) => sum + parseFloat(item.amount), 0)
                });

                weeklyData1.push({
                    label: table.charAt(0).toUpperCase() + table.slice(1),
                    count: filterByDateRange(data[table], startOfWeek, currentDate).length,
                    amount: filterByDateRange(data[table], startOfWeek, currentDate).reduce((sum, item) => sum + parseFloat(item.amount), 0)
                });

                monthlyData1.push({
                    label: table.charAt(0).toUpperCase() + table.slice(1),
                    amount: filterByDateRange(data[table], startOfMonth, currentDate).reduce((sum, item) => sum + parseFloat(item.amount), 0)
                });

                yearlyData1.push({
                    label: table.charAt(0).toUpperCase() + table.slice(1),
                    amount: filterByDateRange(data[table], startOfYear, currentDate).reduce((sum, item) => sum + parseFloat(item.amount), 0)
                });
            }

            ['Weekly', 'Monthly', 'Yearly'].forEach((period, index) => {
                const data = index === 0 ? weeklyData : (index === 1 ? monthlyData : yearlyData);
                data.forEach(({ label }) => {
                    if (!data.some(item => item.label === label)) {
                        data.push({
                            label,
                            count: 0,
                            amount: 0
                        });
                    }
                });
            });

            const createBarChart = (ctx, labels, data, label) => {
                new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels,
                        datasets: [{
                            label,
                            backgroundColor: 'rgba(54, 162, 235, 0.2)',
                            borderColor: 'rgba(54, 162, 235, 1)',
                            borderWidth: 1,
                            data
                        }]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });
            };

            const createDonutChart = (ctx, labels, data) => {
                new Chart(ctx, {
                    type: 'doughnut',
                    data: {
                        labels,
                        datasets: [{
                            data,
                            backgroundColor: ["#FF6384", "#36A2EB", "#FFCE56", "#4BC0C0", "#008000"]
                        }]
                    },
                    options: {
                        cutoutPercentage: 50,
                        responsive: true
                    }
                });
            };

            createBarChart(document.getElementById("bar-chart1").getContext('2d'), weeklyData.map(item => item.label), weeklyData.map(item => item.count), "Beneficiaries Level Throughout the Week");
            createBarChart(document.getElementById("bar-chart2").getContext('2d'), monthlyData.map(item => item.label), monthlyData.map(item => item.count), "Beneficiaries Level Throughout the Month");
            createBarChart(document.getElementById("bar-chart3").getContext('2d'), yearlyData.map(item => item.label), yearlyData.map(item => item.count), "Beneficiaries Level Throughout the Year");
     
     
            createDonutChart(document.getElementById("donut-chart").getContext('2d'), weeklyData1.map(item => item.label), weeklyData1.map(item => item.amount));
            createBarChart(document.getElementById("bar-chart4").getContext('2d'), monthlyData1.map(item => item.label), monthlyData1.map(item => item.amount), "Total Cost Level Throughout the Month");
            createBarChart(document.getElementById("bar-chart5").getContext('2d'), yearlyData1.map(item => item.label), yearlyData1.map(item => item.amount), "Total Cost Level Throughout the Year");
        });
    </script>
</body>
</html>

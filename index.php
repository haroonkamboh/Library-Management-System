<?php
 require_once('sudo/assets/config/config.php');
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Library Management</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Plugin-CSS -->
    
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/icofont.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/cardslider.css">
    <link rel="stylesheet" href="css/responsiveslides.css">

    <!-- Main-Stylesheets -->
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/overright.css">
    <link rel="stylesheet" href="css/theme.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body data-spy="scroll" data-target="#mainmenu" data-offset="50">
    
    <header class="relative" id="sc1">
        <!-- Header-background-markup -->
        <div class="header-bg relative home-slide">
            <div class="item">
                <img src="images/slide/slide1.jpg" alt="library">
            </div>
            <div class="item">
                <img src="images/slide/slide2.jpg" alt="library">
            </div>
            <div class="item">
                <img src="images/slide/slide3.jpg" alt="library">
            </div>
            <div class="item">
                <img src="images/slide/slide4.jpg" alt="library">
            </div>
        </div>
        <!-- Mainmenu-markup-start -->
        <div class="mainmenu-area navbar-fixed-top" data-spy="affix" data-offset-top="10">
            <nav class="navbar">
                <div class="container">
                    <div class="navbar-header">
                        <div class="space-10"></div>
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainmenu">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!--Logo-->
                        <a href="#sc1" class="navbar-left show"><h1 class="logo-lm">Library Management</h1></a>
                        <div class="space-10"></div>
                    </div>
                    <!--Toggle-button-->

                    <!--Mainmenu list-->
                    <div class="navbar-right in fade" id="mainmenu">
                        <ul class="nav navbar-nav nav-white text-uppercase">
                            <li class="active">
                                <a href="#sc1">Home</a>
                            </li>
                            <li>
                                <a href="books.php">Books</a>
                            </li>
                            <li>
                                <a href="lib_user/pages_std_index.php">Library User Login</a>
                            </li>
                            <li>
                                <a href="staff/pages_staff_index.php">Staff Login</a>
                            </li>
                            <li>
                                <a href="sudo/pages_sudo_index.php">Admin Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="space-100"></div>
        <!-- Mainmenu-markup-end -->
        <!-- Header-jumbotron -->
        <div class="space-100"></div>
        <div class="header-text">
            <div class="container">
                <div class="row wow fadeInUp">
                    <div class="col-xs-12 col-sm-10 col-sm-offset-1 text-center">
                        <div class="jumbotron">
                            <h1 class="text-white">Library Management System </h1>
                            <p class="text-white">An Automated And Digital Way Of Mantaining Libraries
                        </div>
                        <div class="title-bar white">
                            <ul class="list-inline list-unstyled">
                                <li><i class="icofont icofont-square"></i></li>
                                <li><i class="icofont icofont-square"></i></li>
                            </ul>
                        </div>
                        <div class="space-40"></div>
                    </div>
                </div>
                <div class="row wow fadeInUp" data-wow-delay="0.5s">
                    <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 ">
                        <div class="panel">
                            <div class="panel-heading">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#book">Book</a></li>
                                    <li><a data-toggle="tab" href="#author">Author</a></li>
                                    <li><a data-toggle="tab" href="#publisher">Publisher</a></li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="book">
                                        <form action="books.php">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Enter book name">
                                                <div class="input-group-btn">
                                                    <button type="submit" class="btn btn-primary"><i class="icofont icofont-search-alt-2"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="author">
                                        <form action="#">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Enter author name">
                                                <div class="input-group-btn">
                                                    <button type="submit" class="btn btn-primary"><i class="icofont icofont-search-alt-2"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="publisher">
                                        <form action="#">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Enter publisher name">
                                                <div class="input-group-btn">
                                                    <button type="submit" class="btn btn-primary"><i class="icofont icofont-search-alt-2"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="space-100"></div>
        <!-- Header-jumbotron-end -->
    </header>
    
   


    <!--Footer-->
    <?php require_once('partials/footer.php');?>

    <!-- Vandor-JS -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <!-- Plugin-JS -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <script src="js/jquery.cardslider.min.js"></script>
    <script src="js/pagination.js"></script>
    <script src="js/scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/plugins.js"></script>
    <!-- Active-JS -->
    <script src="js/main.js"></script>

</body>
</html>
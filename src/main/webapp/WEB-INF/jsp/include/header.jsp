<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Web Application for logistic companies helps to control your products shipments between multiple locations and supervise any changes with products. Can be widely used on many types of products." />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="../../../pub/css/style.css">
    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>-->
    <script src="https://kit.fontawesome.com/2460d75aa0.js" crossorigin="anonymous"></script>
    <script src="../../../js/main.js"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    <title>InventoryManagementApplication | Main</title>
</head>
<body class="bg-lightblue">
<header class="fixed-top bg-dark">
    <div class="container d-flex justify-content-center">
        <a class="navbar-brand m-0 text-center" style="height: fit-content" href="/case"><img src="../../../pub/img/logo.gif" style="width: 60%" alt="logo.gif"></a>
        <div>
            <h1 class="text-white display-6 m-0">Inventory Management System</h1>
            <nav class="navbar navbar-expand-sm navbar-dark p-0">
                <ul class="navbar-nav flex-wrap">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Services</a>
                        <ul class="dropdown-menu bg-dark" id="serviceNavDropdown" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item text-white-50" type="button" href="/customers">Customers' service</a></li>
                            <li><a class="dropdown-item text-white-50" type="button" href="/packages">Packages' service</a></li>
                            <li><a class="dropdown-item text-white-50" type="button" href="/items">Items' service</a></li>
                            <li><a class="dropdown-item text-white-50" type="button" href="/pallets">Pallets' service</a></li>
                            <li><a class="dropdown-item text-white-50" type="button" href="/locations">Locations' service</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/usersupport">User support</a>
                        <!-- $ {pageContext.request.contextPath}/src/main/webapp/WEB-INF/jsp/casestudy-index/ -->
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/register">Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin">Admin</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Reports</a>
                        <ul class="dropdown-menu bg-dark" id="reportsNavDropdown">
                            <li><a class="dropdown-item text-white-50" type="button" href="#">Most-in-stock items report</a></li>
                            <li><a class="dropdown-item text-white-50" type="button" href="#">Out-of-stock items report</a></li>
                            <li><a class="dropdown-item text-white-50" type="button" href="#">New unassigned items report</a></li>
                            <li><a class="dropdown-item text-white-50" type="button" href="#">Last assigned items report</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<%@page isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>The Corner Cloth Shop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <c:url value="/resources/bootstrap/css/" var="boot"/>
  <c:url value="/resources/bootstrap/js/" var="js"/>
  <c:url value="/resources/angularjs/" var="ang"/>
  <c:url value="/resources/images/" var="img"/>
  <c:url value="/resources/jquery/" var="jq"/>
  <c:url value="http://localhost:8080/thecornerclothshop/" var="path"/>
  
  	<link rel="stylesheet" href="${boot}bootstrap.min.css">
  	<link rel="stylesheet" href="${boot}custom.css">
 	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="${js }bootstrap.min.js"></script>
  <script src="${ang }angular.min.js"></script>

</head>

<body>
<script src="${jq }jquery-2.2.3.min.js"></script>
<div class="container">
 <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="index">The Corner Clothshop</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      <li><a href="${path}#top">HOME</a></li>
        <li><a href="${path}#about">ABOUT</a></li>
        <li><a href="${path}#products">PRODUCTS</a></li>
        <li><a href="${path}#contactus">CONTACT US</a></li>
        <li><a href="${path}usersignin">SIGN IN</a></li>
        <li><a href="${path}cart"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
      </ul>
    </div>
  </div>
</nav>
</div>
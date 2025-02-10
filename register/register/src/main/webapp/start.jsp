<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books</title>
    <link href="display.css" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Tangerine:wght@400;700&display=swap" rel="stylesheet">
    
</head>
<body>
<div class="top-header">
    <div class="header-left">
       <div class="left-icon"> 
        <i class="fa-solid fa-bars"></i>
       </div>
       <div class="left-icon">
        <i class="fa-solid fa-cart-shopping"></i>
       </div>
       <div class="left-icon ">
        <i class="fa-solid fa-location-dot"></i>
        <p class="loc-text">Location</p>
       </div>
    </div>
    <div class="shop">
           <p>Chips</p>
    </div>
    <div class="header-right">
        <div class="right-icon"> 
            <i class="fa-solid fa-bars"></i>
        </div>
        <div class="right-icon">
            <i class="fa-solid fa-heart"></i>
        </div>
        <div class="right-icon">
           <a href="add.jsp" ><i  class="fa-solid fa-user"></i></a>
        </div>
    </div>
</div>
<div>
    <div class="search-bar">
        <i class="fa-solid fa-magnifying-glass"></i>
       <input class="search-text" type="text" ></input>
    </div>
</div>
<div class="submenu">
    <div class="filter">
     <p>Filter by</p>
     <i class="fa-solid fa-sliders"></i>
    </div>
    <div class="filter">
        <p>Sort by by</p>
        <i class="fa-solid fa-sliders"></i>
    </div>

</div>




<div class="start-method">
    <div class="start-add">
    <a href="add.jsp" >Add The Chips Product</a>
</div>
<div class="start-display">
    <a  href="display-product">display All The product</a>
</div>
    </div>

  

    <script src="https://kit.fontawesome.com/11b39fcd50.js" crossorigin="anonymous"></script>
</body>
</html>
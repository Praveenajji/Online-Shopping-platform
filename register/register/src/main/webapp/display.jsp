<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.List"%>
	<%@page import="com.example.register.entity.Chips"%>
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

<%
		
				List<Chips> chips = (List<Chips>) request.getAttribute("chips");
		%>


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
           <a href="start.jsp" > <i class="fa-solid fa-bars"></i></a>
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
<div>
<div class="products-list">



<%	

						for(Chips chip : chips) {
				%>




    <div class="products"> 
        <div class="details">
            <div class="img-chip">
                <img src="bingo.png">
                
            </div>
            <div class="heart-like">
                <i class="fa-regular fa-heart"></i>
            </div>
            <div class="heart-par">
                <p><%=chip.getChipsdetails() %></p>
            </div>
            <div class="heart-rupees">
                <p>$<%=chip.getChipsprice() %></p>
            </div>
            <div class="heart-cart" >
                <button>Add to cart</button>
            </div>
            <div class="heart-delete">
             <a href="delete-product?chips_id=<%=chip.getChipsid()%>">Delete</a>
             <a href="update-product?chips_id=<%=chip.getChipsid()%>">Update</a>
            </div>
            
         
        </div>
        
       
  </div>
      <%
  }
%>
</div>
    

    <script src="https://kit.fontawesome.com/11b39fcd50.js" crossorigin="anonymous"></script>
</body>
</html>
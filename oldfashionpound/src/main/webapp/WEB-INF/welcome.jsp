<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/common.css" rel="stylesheet">
    
<style>
body {background-color: bisque;}
h3   {font-family: verdana;
    font-size: 100%;
    text-align:center;}
p    {color: red;}
ul {
    list-style-type: none;
    margin: 0;
    padding: 50;
    overflow: hidden;
    background-color: #333333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111111;
}
.column {
    float: left;
    width: 33.33%;
    padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
    content: "";
    clear: both;
    display: table;
}
td#a
{
 color:Black;
}
td#b
{color:blue}
</style>


</head>
<body >

         <h1 style="color:DodgerBlue;text-align: center;" >Welcome to OldfashionPound page </h1>
          
            <hr>

           

						
					<div class="container" style="height: 200px; width: 50%; text-align: center">
						
						<form action="/sum">
						  
						 p
						  <input type="number" id="pp1" name="p1" value="0" min="0">
						 s
						 <input type="number" id="ss1" name="s1" value="0" max="19" min="0">
						 d
						 <input type="number" id="dd1" name="d1" value="0" max="11" min="0">
						 <br><br>
						 p
						  <input type="number" id="pp" name="p" value="0" min="0">
						 s
						 <input type="number" id="ss" name="s" value="0" max="19" min="0">
						 d
						 <input type="number" id="dd" name="d" value="0" max="11" min="0">
						<br><br>
						 <input type="hidden" name="act" value="somma">
						  <input type="submit" value="Somma">
						</form>
					</div>
						
			    	<div class="container" style="height: 200px; width: 50%; text-align: center">
						<form action="/sum">  
							 p
						  <input type="number" id="pp1" name="p1" value="0" min="0">
						 s
						 <input type="number" id="ss1" name="s1" value="0" max="19" min="0">
						 d
						 <input type="number" id="dd1" name="d1" value="0" max="11" min="0">
						 <br><br>
						 p
						  <input type="number" id="pp" name="p" value="0" min="0">
						 s
						 <input type="number" id="ss" name="s" value="0" max="19" min="0">
						 d
						 <input type="number" id="dd" name="d" value="0" max="11" min="0">
						<br><br>
						  <input type="hidden" name="act" value="sottrazione">
						  <input type="submit" value="Sottrazione">
						</form>
					</div>
					
					
					<div class="container" style="height: 200px; width: 50%; text-align: center">
						<form action="/multiple">
						  
						 p
						  <input type="number" id="p" name="p" value="0" min="0">
						 s
						 <input type="number" id="s" name="s" value="0" max="19" min="0">
						 d
						 <input type="number" id="d" name="d" value="0" max="11" min="0">
						 <br><br>
						 fattore
						  <input type="number"  name="f" value="2" min="2">
				          <input type="hidden" name="act" value="multiplicazione">
						<br><br>
						  <input type="submit" value="multiplicazione">
						</form>
					</div>
					
					
					<div class="container" style="height: 200px; width: 50%; text-align: center">
						
						<form action="/multiple">
						 p
						  <input type="number" id="p" name="p" value="0" min="0">
						 s
						 <input type="number" id="s" name="s" value="0" max="19" min="0">
						 d
						 <input type="number" id="d" name="d" value="0" max="11" min="0">
						 <br><br>
						 fattore
						  <input type="number"  name="f" value="2" min="2">
				            <input type="hidden" name="act" value="divisione">
						<br><br>
						  <input type="submit" value="Divisione">
						</form>
					</div>

<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>
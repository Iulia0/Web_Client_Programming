<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
</style>
<script>
function validateForm() {
    var x = document.forms["myForm"]["searchArtist"].value;
    if (x == "") {
        alert("Field must be filled out");
        return false;
    }
	else if(x.length === 1){
		alert("Input can't be a single character");
        return false;
	}


}
function validateFormPrice() {
    var x = document.forms["myFormP"]["firstNo"].value;
    var y = document.forms["myFormP"]["secondNo"].value;
    console.log(x);
    console.log(y);
    if (x === "" || y === "") {
        alert("Field must be filled out");
        return false;
    }

}
</script>
<script>
</script>
</head>
<body>

<ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="products.jsp">View Products</a></li>
  <li><a href="basket.jsp">View Basket</a></li>
  	<div class= "class">
 <form action="index.jsp" onsubmit="return validateForm()" name = "myForm" method="GET">
        <input type="text" name="searchArtist" value="" />
        <input type="submit" value="Search Artist" />
      </form> 
	  		</div>
		<div class= "class2">	
 <form action="index.jsp" onsubmit="return validateFormPrice()" name = "myFormP" method="GET">
	    <input type="text" name="firstNo" size="5">to<input type="text" name="secondNo" size="5">
        <input type="submit" value="Search price range pence" />
      </form> 	  
	  		</div>
</ul>

</body>
</html>





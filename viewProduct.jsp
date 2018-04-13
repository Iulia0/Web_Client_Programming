<%@ page import="shop.Product"%>

<jsp:useBean id='db'
             scope='session'
             class='shop.ShopDB' />

<html>
  <head>
    <meta charset="UTF-8" />
    <title>View Product</title>
    <link rel="stylesheet"    
          href="stylesheet.css" 
          type="text/css" />
  </head>
<body>
    <div class="container">
      <jsp:include page="header.jsp" />
	  <jsp:include page="top_menu.jsp" />	 
      <div class="content">
 
<%
    String pid = request.getParameter("pid");
    Product product = db.getProduct(pid);
    // out.println("pid = " + pid);
    if (product == null) {
        // do something sensible!!!
        out.println( product );
    }
    else {
        %>
        <div align="center">
        <h3> <%= product.title %>  by <%= product.artist %> </h3>
        <img id = 'big' src="<%= product.fullimage %>" />
        <p> <%= product.description %> </p>
		
        <form action="basket.jsp" method="get">Add to the basket
        <input type="hidden" name="addItem" value=<%=pid%>>
        <input type="submit" name="Add" />
        </form>


        </div>
        <%
    }
%>

	</div>
	<jsp:include page="footer.jsp" />	
	</div> 

</body>
</html>

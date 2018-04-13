<%@ page import="shop.Product"%>

<jsp:useBean id='db'
             scope='session'
             class='shop.ShopDB' />

<html>
  <head>
    <meta charset="UTF-8" />
    <title>My Shop</title>
    <link rel="stylesheet"    
          href="stylesheet.css" 
          type="text/css" />
  </head>
<body>
    <div class="container">
      <jsp:include page="header.jsp" />
	  <jsp:include page="top_menu.jsp" />	 
      <div class="content">
 
<table>
<tr>
<th> Title </th> <th> Price </th> <th> Picture </th>
</tr>
<%
    for (Product product : db.getAllProducts() ) {
        // now use HTML literals to create the table
        // with JSP expressions to include the live data
        // but this page is unfinished - the thumbnail
        // needs a hyperlink to the product description,
        // and there should also be a way of selecting
        // pictures from a particular artist
        %>
        <tr>
             <td> &nbsp &nbsp &nbsp &nbsp<%= product.title %> &nbsp</td>
             <td> &nbsp &nbsp &nbsp<%= product.price / 100 +"." + product.price % 100 %> &nbsp &nbsp</td>
             <td> &nbsp <a href = '<%="viewProduct.jsp?pid="+product.PID%>'> <img src="<%= product.thumbnail %>"/> </a> </td>
        </tr>
        <%
    }
 %>
 </table>
 
	</div>
	<jsp:include page="footer.jsp" />	
	</div> 

</body>
</html>

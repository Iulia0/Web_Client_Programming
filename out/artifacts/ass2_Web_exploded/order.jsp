<jsp:useBean id='basket'
         scope='session'
         class='shop.Basket'
          />

<jsp:useBean id = 'db'
             scope='page'
             class='shop.ShopDB' />

<html>
  <head>
    <meta charset="UTF-8" />
    <title>Order</title>
    <link rel="stylesheet"    
          href="stylesheet.css" 
          type="text/css" />
  </head>
<body>
    <div class="container">
      <jsp:include page="header.jsp" />
	  <jsp:include page="top_menu.jsp" />	 
      <div class="content">
 
<% String custName = request.getParameter("name");

		
		

    // need to call the appropriate method of db to
    // order the product
    // at present we thank the customer, but then fail
    // to make the order

    // when the order has been made, we should also empty
    // the contents of this shopping basket - but how ???

    if (custName != null) {
		db.order(basket, custName);
		basket.clearBasket();
        // order the basket of items!
        // then empty the basket
    %>
    <h2> Dear <%= custName %> ! Thank you for your order. </h2>
    <%
    }
        else {
        %>
        <h2> please go back and supply a name </h2>
        <%
    }

%>

	</div>
	<jsp:include page="footer.jsp" />	
	</div> 
	
</html>
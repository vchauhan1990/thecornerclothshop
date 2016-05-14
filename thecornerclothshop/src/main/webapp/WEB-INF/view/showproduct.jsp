<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@include file="header.jsp" %>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
	<div><h2>${product.pname}</h2></div>
	<div class="row">
	<div class="col-xs-5">
	<img src="${img}${product.pid}.jpg" height=400 width=400/>
	</div>
	<div class="col-xs-7" style="float: right">
	<div>
			
			<table width="100%">
				<tr>
					<td colspan=2><h3>${product.pname}</h3></td>
				</tr>
				<tr>
					<td>Brand Name/Company Name: </td>
					<td>${product.brand}</td>
				</tr>
				<tr>
					<td>Category: </td>
					<td>${product.gtype}</td>
				</tr>
				<tr>
					<td>Price/MRP: </td>
					<td>Rs. ${product.price}</td>
				</tr>
				<tr>
					<td>Discount: </td>
					<td>${product.discount}%</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<a href="cartFlow"><button class="btn" style="margin: 0px;width:150px; background-color: #00A2E8; color:white; text-align: center; font-size: 15px; border-radius: 0px;">Add to Cart<span class="glyphicon glyphicon-shopping-cart"></span></button></a>
					<form:form action="cartFlow">
						<input type="hidden" name="pid" value="${product.pid}"/>
						<input type="hidden" name="pname" value="${product.pname}"/>
						<input type="hidden" name="price" value="${product.price}"/>
						<input type="hidden" name="brand" value="${product.brand}"/>
						<input type="hidden" name="discount" value="${product.discount}"/>
						<input type="submit" value="Add to cart"/>
					</form:form>
					</td>					
				</tr>
			</table>
	</div>
	
	</div>
	</div>
	
</div>
<jsp:include page="footer.jsp"></jsp:include>
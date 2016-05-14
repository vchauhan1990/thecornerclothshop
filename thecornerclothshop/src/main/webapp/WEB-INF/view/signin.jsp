<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<jsp:include page="header.jsp"/>

<div style="height: 50px"></div>


<div class="container panel panel-default" style="width: 500px; border-radius: 0px;">

  <div class="panel-heading" style="margin: 0px;background-color: #00A2E8; color:white; font-weight: bold; text-align: center; font-size: 30px; border-radius: 0px;">USER LOGIN PAGE</div>
  <div class="panel-body">

<div class="text-center" style="padding-top: 50px;">
<form class="form-horizontal" role="form" action="j_spring_sercurity_check" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="username">Username:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="username" name="j_username" placeholder="Enter username">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="pwd" name="j_password" placeholder="Enter password">
    </div>
  </div>
  <div class="form-group text-center"> 
   
      <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;">
      Submit</button>
  </div>
</form>
	</div>
</div>
	<h4>New User? Let's Shop Together!</h4>
	<a href="register"><button class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;">
      Register</button></a>
	</div>


<jsp:include page="footer.jsp"/>
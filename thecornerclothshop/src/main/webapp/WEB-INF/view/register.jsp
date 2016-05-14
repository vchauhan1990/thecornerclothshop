<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"/>
<div class="container">
<form>
<div style="text-align: center; font-size: 30px; font-weight: bold; font-family: 'segoe ui';  ">
Register Page
</div>
 <div class="form-group row">

    <label for="firstname" >First Name: </label>
    <input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name">

    <label for="lastname">Last Name: </label>
    <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name">

  </div>
  
   <div class="form-group row">

    <label for="useremailid" >Email Id: </label>
    <input type="email" class="form-control" id="useremailid" name="emailid" placeholder="Email Id">
    
  </div>
  
     <div class="form-group row">

    <label for="userpassword" >Password: </label>
    <input type="password" class="form-control" id="userpassword" name="userpassword" placeholder="Password">
    
  </div>
       <div class="form-group row">

    <label for="cpassword" >Confirm Password: </label>
    <input type="password" class="form-control" id="cpassword" name="cuserpassword" placeholder="Confirm Password">
    
  </div>
  
         <div class="form-group row">

    <label for="cpassword" >Confirm Password: </label>
    <input type="password" class="form-control" id="cpassword" name="cuserpassword" placeholder="Confirm Password">
    
  </div>
	
	<div class="form-group row">

    <label for="cpassword" >Gender: </label>
    <select class="form-control dropdown">
    <option value="male">Male</option>
    <option value="female">Female</option>
    </select>
    
  </div>
	<div class="text-center">
  <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;"">Register</button>
  </div>
</form>
</div>

<jsp:include page="footer.jsp"/>

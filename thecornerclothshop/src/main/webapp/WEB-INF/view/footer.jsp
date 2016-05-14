<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<footer class="container-fluid text-center">
  <a href="#top" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p> (c)2016 Copyright. www.thecornerclothshop.com <a href="http://localhost:8086/thecornerclothshop/" title="Vist The Corner ClothShop">www.thecornerclothshop.com</a></p> 
</footer>
<div class="modal fade" id="signin" role="dialog">
    <div class="modal-dialog">
    
      <div class="modal-content container-fluid">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Sign In</h3>
        </div>
        <form action="loginForm" method="post">  
        <div class="modal-body">
    
       <div class="form-group row">

    <label for="useremailid" >User name: </label>
    <input type="text" class="form-control" id="userid" name="luserid" placeholder="User name">
    
  </div>
  
     <div class="form-group row">

    <label for="userpassword" >Password: </label>
    <input type="password" class="form-control" id="userpassword" name="luserpassword" placeholder="Password">
    
  </div>
       
    
        </div>
        <div class="modal-footer">
          <input type="submit" class="btn btn-primary" value="Sign in"/>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div>
        </form>
      </div>
      
    </div>
  </div>
</body>
</html>
<%@page isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="header.jsp" %>
<jsp:include page="header.jsp"/>

<section id="top">
<div id="imgslider" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#imgslider" data-slide-to="0" class="active"></li>
    <li data-target="#imgslider" data-slide-to="1"></li>
    <li data-target="#imgslider" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="${img}firstcloth.jpg" alt="cloth">
      <div class="carousel-caption">
      <h2>SUMMER EXCLUSIVE</h2>
       <h1>40% - 50%<br/>OFF SALE</h1>
       <h5>GET 20% OFF FOR SALE STYLES WITH CODE SALE2016</h5>
       <button class="btn-new">SEE MORE</button>
      </div>
    </div>

    <div class="item">
      <img src="${img}firstshoes.jpg" alt="shoes">
      <div class="carousel-caption">
       <h1>ESSENTIALS FOR SUMMERS</h1>
       <h3>DISCOVER HUNDREDS OF PRODUCTS ABOUT SUMMER ESSENTIALS</h3>
       <button class="btn-new">SHOP NOW</button>
      </div>
      </div>

    <div class="item">
      <img src="${img}firstwatch.jpg" alt="watch">
      <div class="carousel-caption">
      <h1>NEW COLLECTION</h1>
       <h3>SUMMER EXCLUSIVE DENIMS/NO-DENIM ROW</h3>
       <button class="btn-new">LOOK ROW</button>
      </div>
      </div>
    </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#imgslider" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#imgslider" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</section>


<div style="height: 50px"></div>
<section id="products">
<div class="container-fluid bg-3 text-center"> 
  <h2>Our Favourite Categories</h2>
  <div class="row">
    <div class="col-sm-4">
      <h3>Men's</h3>
     <a href="showProduct/Men"> <img src="${img }clothes2.jpg" width="100%" alt="Men's"></a>
    </div>
    <div class="col-sm-4">
      <h3>Women's</h3>
      <a href="showProduct/Women"><img src="${img }clothes4.jpg" width="100%" alt="Women's"></a>
    </div>
    <div class="col-sm-4"> 
      <h3>Accessories</h3>
    <a href="showProduct/accessories">  <img src="${img }watches2.jpg" width="100%" alt="Accessories"></a>
    </div>
  </div>
</div>
</section>


<div style="height: 50px"></div>
<section id="contactus">
<div class="container bg-gray">
  <h2 class="text-center">CONTACT US</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Neemrana, Rajasthan</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 9013832352</p>
      <p><span class="glyphicon glyphicon-envelope"></span> query@thecornerclothshop.com</p> 
    </div>
    <form action="savecontactus" method="post">
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" name="name" placeholder="Name" type="text" required="required"/>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" name="email" placeholder="Email" type="email" required="required"/>
        </div>
      </div>
      <textarea class="form-control" name="comment" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn"  type="submit" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;">Send</button>
        </div>
        <c:if test="${msg}!=null">
        <c:out value="Thank you for contacting us! Our team will contact with within 24 hours."/>
        </c:if> 
      </div> 
    </div>
    </form>
  </div>
</div>
</section>
<div style="height: 50px"></div>


<jsp:include page="footer.jsp"/>
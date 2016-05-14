<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp" %>
<jsp:include page="header.jsp"/>
<script>

</script>
<div class="container" ng-app="myApp" ng-controller="jsonCtrl" style="padding-top:30px">
   
  <table class="table table-bordered table-striped">
    

    <thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'pid'; sortReverse = !sortReverse">
            Product ID 
            <span ng-show="sortType == 'pid' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'pid' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'pname'; sortReverse = !sortReverse">
          Product Name
            <span ng-show="sortType == 'pname' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'pname' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         	Quantity
            <span ng-show="sortType == 'brand' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'price'; sortReverse = !sortReverse">
         	Price
            <span ng-show="sortType == 'price' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'discount'; sortReverse = !sortReverse">
         	Discount
            <span ng-show="sortType == 'discount' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'discount' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'size'; sortReverse = !sortReverse">
         	Total Price
            <span ng-show="sortType == 'size' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'size' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#">
         	<span class="glyphicon glyphicon-plus"></span>
          </a>
        </td>
         <td>
          <a href="#">
         	<span class="glyphicon glyphicon-minus"></span>
          </a>
        </td>
      </tr>
    </thead>
    
    <tbody>
    
      <tr ng-repeat="roll in music | orderBy:sortType:sortReverse | filter:searchMusic">
         
         <td>${flowScope.pid}</td>
<td>${flowScope.pname}</td>
<td>${flowScope.quantity}</td>
<td>${flowScope.price}</td>
<td>${flowScope.discount}</td>
<td>${flowScope.price*flowScope.quatity}</td>
      </tr>
              
    </tbody>
    
  </table>
 </div>
<div class="text-center">
<a href="${flowExecutionUrl}&amp;_eventId=submit">Click</a>

</div>

<jsp:include page="footer.jsp"/>
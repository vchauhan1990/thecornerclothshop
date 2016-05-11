<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="thecornerclothshop.model.*" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>
<jsp:include page="header.jsp"/>

<div class="container" ng-app="myApp" ng-controller="jsonCtrl">
   
  <form>
    <div class="form-group" style="padding-top: 30px;">
      <div class="input-group">
        <div class="input-group-addon"><span class="glyphicon glyphicon-search"></span></div>
        <input type="text" class="form-control" placeholder="Search product" ng-model="searchproduct">
      </div>      
    </div>
  </form>
  
  <div class="container">

<div ng-repeat="x in product | orderBy:sortType:sortReverse | filter:searchproduct" class="col-xs-4 text-center">
   	      <div class="panel panel-default" style="border-radius: 0px;">
    <div class="panel-body text-center">
      <div style="float: left;">
      
      <form action="${path}productpage/showproduct" method="post" class="text-center">
      	<input type="hidden" value={{x.pid}} name="pid"/>
        <input type="hidden" value={{x.pname}} name="pname"/>
        <input type="hidden" value={{x.brand}} name="pbrand"/>
        <input type="hidden" value={{x.discount}} name="pdesc"/>
        <input type="hidden" value={{x.price}} name="price"/>
        <input type="hidden" value={{x.gtype}} name="category"/>
        <input type="hidden" value={{x.img}} name="img"/>
        <button type="submit" class="btn btn-link">
        <img src="${img}{{x.img}}" height=200 width=150/>
        </button>
      </form>
     </div>
     </div>
     <div class="panel-heading text-center" style="margin: 0px;background-color: #00A2E8; color:white; text-align: center; border-radius: 0px;">
      {{ x.pname }}
     <table>
      <tr >
        <td>{{ x.brand }}</td>
     </tr>
     <tr>
        <td>{{ x.discount }}</td>
         </tr>
     <tr>
        <td>{{ x.price }}</td>
         </tr>
     <tr>
        <td>{{ x.gtype0 }}</td>
         </tr>
      </table>
      	
      </div>
    </div>

    </div>
 	
  
  
 

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
         	Brand
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
         	Size
            <span ng-show="sortType == 'size' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'size' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'gtype'; sortReverse = !sortReverse">
         	Clothing For
            <span ng-show="sortType == 'gtype' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'gtype' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
      </tr>
    </thead>
    
    <tbody>
    
      <tr ng-repeat="roll in product | orderBy:sortType:sortReverse | filter:searchproduct">
         
        <td>{{ roll.pid }}</td>
        <td>{{ roll.pname }}</td>
        <td>{{ roll.brand }}</td>
        <td>{{ roll.price }}</td>
        <td>{{ roll.discount }}</td>
        <td>{{ roll.size }}</td>
        <td>{{ roll.gtype }}</td>
      </tr>
              
    </tbody>
    
  </table>

 </div>
     <script>
        var myApp=angular.module('myApp', [])

        myApp.controller('jsonCtrl', function($scope,$http) {

        	 
        	        $scope.product = <%=request.getAttribute("list")%>;
        	        
        	      
        });
        </script>
<jsp:include page="footer.jsp"/>
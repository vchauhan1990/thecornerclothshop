<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<jsp:include page="header.jsp"/>
        <script>
        var myApp=angular.module('myApp', [])

        myApp.controller('jsonCtrl', function($scope,$http) {

        	 
        	        $scope.music = <%=request.getAttribute("list")%>;
        	        $scope.myFunction = function() {
        	        	$scope.music = <%=request.getAttribute("list")%>;
        	        	$scope.pid=music.pid;
        	        	$scope.pname=music.pname;
        	        	$scope.brand=music.brand;
        	        	$scope.gtype=music.gtype;
	       	        	$scope.price=music.price;
        	        	$scope.discount=music.discount;
        	        	$scope.size=music.size;
        	        	}
        	        
        	      
        });
        </script>

<div style="height: 50px"></div>
<div class="container text-center" style="width: 700px; text-align: center">

<form:form action="uploadImage" commandName="product" modelAttribute="product" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
<table>
    <c:if test="${!empty product.pid}">
    <tr style="padding: 10px;">
        <td>
            <form:label class="control-label" path="pid">
                <spring:message text="Product ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="pid" readonly="true" size="8"  disabled="true" ng-model="pid" class="form-control"/>
           	<form:hidden path="pid" />
        </td> 
         <td><form:errors path="pid" cssStyle="color: #c0392b;"/></td>
    </tr>
    </c:if>
    <tr>
        <td>
            <form:label class="control-label" path="pname">
                <spring:message text="Product Name"/>
            </form:label>
        </td>
        <td>
            <form:input path="pname" ng-model="pname" class="form-control"/>
        </td> 
        <td><form:errors path="pname" cssStyle="color: #c0392b;"/></td>
    </tr>
    <tr>
        <td>
            <form:label class="control-label" path="brand">
                <spring:message text="Brand"/>
            </form:label>
        </td>
        <td>
            <form:input path="brand" ng-model="brand"  class="form-control"/>
        </td>
        <td><form:errors path="brand" cssStyle="color: #c0392b;"/></td>
    </tr>
        <tr>
        <td>
            <form:label class="control-label" path="gtype">
                <spring:message text="Product Type" />
            </form:label>
        </td>
        <td>
           <form:select path="gtype" ng-model="gtype" class="form-control">
           		<form:option value="Men">Men's</form:option>
           		<form:option value="Women">Women's</form:option>
           		<form:option value="accessories">Accessories</form:option>
           </form:select>
        </td>
        <td><form:errors path="gtype" cssStyle="color: #c0392b;"/></td>
    </tr>
        <tr>
        <td>
            <form:label class="control-label" path="price" >
                <spring:message text="Price" />
            </form:label>
        </td>
        <td>
            <form:input path="price" ng-model="price" class="form-control"/>
        </td>
        <td><form:errors path="price" cssStyle="color: #c0392b;"/></td>
    </tr>
            <tr>
        <td>
            <form:label class="control-label" path="discount">
                <spring:message text="Discount"/>
            </form:label>
        </td>
        <td>
            <form:input path="discount"  ng-model="discount" class="form-control"/>
        </td>
        <td><form:errors path="discount" cssStyle="color: #c0392b;"/></td>
    </tr>
        <tr>
        <td>
            <form:label class="control-label" path="size">
                <spring:message text="Size"/>
            </form:label>
        </td>
        <td>
            <form:input path="size"  ng-model="size" class="form-control"/>
        </td>
        <td><form:errors path="size" cssStyle="color: #c0392b;"/></td>
    </tr>
        <tr>
        <td>
            <form:label class="control-label" path="img">
                <spring:message text="Image Upload"/>
            </form:label>
        </td>
        <td>
            <form:input type="file" path="img"  ng-model="img" class="form-control"/>
        </td>
        <td><form:errors path="img" cssStyle="color: #c0392b;"/></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.pname}">
                <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;"
                    ><spring:message text="Edit Product"/></button>
            </c:if>
            <c:if test="${empty product.pname}">
                <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;"
                 ><spring:message text="Add Product"/></button>
            </c:if>
        </td>
    </tr>
</table>  
</form:form>

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
        <td>
          <a href="#">
         	Edit
          </a>
        </td>
        <td>
          <a href="#">
         	Delete
          </a>
        </td>
      </tr>
    </thead>
    
    <tbody>
    
      <tr ng-repeat="roll in music | orderBy:sortType:sortReverse | filter:searchMusic">
         
        <td>{{ roll.pid }}</td>
        <td>{{ roll.pname }}</td>
        <td>{{ roll.brand }}</td>
        <td>{{ roll.price }}</td>
        <td>{{ roll.discount }}</td>
        <td>{{ roll.size }}</td>
        <td>{{ roll.gtype }}</td>
        <td>
        <form action="editproduct" method="post">
      	<input type="hidden" value={{roll.pid}} name="pid"/>
        <input type="hidden" value={{roll.pname}} name="pname"/>
        <input type="hidden" value={{roll.pbrand}} name="brand"/>
        <input type="hidden" value={{roll.discount}} name="discount"/>
        <input type="hidden" value={{roll.price}} name="price"/>
        <input type="hidden" value={{roll.gtype}} name="gtype"/>
        <input type="hidden" value={{roll.img}} name="img"/>
         <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #d35400; color:white; text-align: center; font-size: 015x; border-radius: 0px;"
                    >
        Edit &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-edit"></span>
        </button>
      </form>
       </td>
       <td>
        <form action="deleteproduct" method="post">
      	<input type="hidden" value={{roll.pid}} name="pid"/>
        <input type="hidden" value={{roll.pname}} name="pname"/>
        <input type="hidden" value={{roll.pbrand}} name="brand"/>
        <input type="hidden" value={{roll.discount}} name="discount"/>
        <input type="hidden" value={{roll.price}} name="price"/>
        <input type="hidden" value={{roll.gtype}} name="gtype"/>
        <input type="hidden" value={{roll.img}} name="img"/>
       <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #c0392b; color:white; text-align: center; font-size: 015x; border-radius: 0px;"
                    >
        Delete &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-remove"></span>
        </button>
      </form>
       </td>
      </tr>
              
    </tbody>
    
  </table>

 </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
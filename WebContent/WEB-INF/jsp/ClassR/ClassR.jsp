<%-- 
    Document   : _home
    Created on : Jun 9, 2022, 4:40:01 AM
    Author     : Administrator
--%>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        
        <c:if test="${sessionScope.SUCCESS_MSG != null}">
            <div style="background: green;color:white;">
		${sessionScope.SUCCESS_MSG}
		<% session.setAttribute("SUCCESS_MSG", null); %>
            </div>
        </c:if>


    <h1 class="text-center">Class List</h1>
    <table class="table table-bordered border-primary">
	  <thead>
		    <tr>
		      <th scope="col">Class Id</th>
		      <th scope="col">Name Class</th>
		      <th scope="col">Action</th>
		    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach var="Data" items="${requestScope.DataTable}" > <!--m? vòng l?p for -->
			<tr>
				<td>${Data.ClassId}</td> <!-- hoặc Pet["Ten"] cũng OK-->
				<td>${Data.NameClass}</td>
				<td>
					<a class="btn btn-success" href="/editClass?ClassId=${Data.ClassId}" role="button">Edit</a> | 
					<a class="btn btn-warning" href="/deleteClass?ClassId=${Data.ClassId}" role="button">Delete</a> |
					<a class="btn btn-danger" href="/detailsClass?ClassId=${Data.ClassId}" role="button">Details</a> 
				</td>
			</tr>
		</c:forEach>
	  </tbody>
	</table>
<a class="btn btn-primary" href="/addClass" role="button">Add a new Class</a>

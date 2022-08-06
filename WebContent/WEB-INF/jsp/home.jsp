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

	<h1 class="text-center">Student List</h1>
    <table class="table table-bordered border-primary">
	  <thead>
		<tr>
			<th>Student Id</th>
			<th>Name Class</th>
			<th>NameStudent</th>
			<th>Actions</th>
		</tr>
	  </thead>
	  <tbody>
		<c:forEach var="Data" items="${requestScope.DataTable}" > <!--m? vòng l?p for -->
		<tr>
			<td>${Data.StudentId}</td>
			<td>${Data.ClassId}</td>
			<td>${Data.Name}</td>
			<td>
				<a class="btn btn-success" href="/edit?StudentId=${Data.StudentId}" role="button">Edit</a> | 
				<a class="btn btn-warning" href="/delete?StudentId=${Data.StudentId}" role="button">Delete</a> |
				<a class="btn btn-danger" href="/details?StudentId=${Data.StudentId}" role="button">Details</a> 
			</td>
		</tr>
		</c:forEach>
	  </tbody>
	</table>
	<div class="row">
		<div class="col-6">
			<a class="btn btn-primary" href="/add" role="button">Add a new Student</a>
		</div>
		<div class="col-6">
			<nav aria-label="Page navigation example  text-end">
			  <ul class="pagination">
			  <li class="page-item"><a class="page-link" href="home?Page=0">0</a></li>
				<li class="page-item"><a class="page-link" href="home?Page=1">1</a></li>
				<li class="page-item"><a class="page-link" href="home?Page=2">2</a></li>
				<li class="page-item"><a class="page-link" href="home?Page=3">3</a></li>
				<li class="page-item"><a class="page-link" href="home?Page=4">4</a></li>
				<li class="page-item"><a class="page-link" href="home?Page=5">5</a></li>
			  </ul>
			</nav>
		</div>
	</div>




<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        
        <c:if test="${sessionScope.SUCCESS_MSG != null}">
            <div style="background: green;color:white;">
		${sessionScope.SUCCESS_MSG}
		<% session.setAttribute("SUCCESS_MSG", null); %>
            </div>
        </c:if>


    <h1 class="text-center">Result List</h1>
    <table class="table table-bordered border-primary">
	  <thead>
		<tr>
			<th>Result Id</th>
			<th>Point</th>
			<th>Name Student</th>
			<th>Name Subject</th>
			<th>Actions</th>
		</tr>
	  </thead>
	  <tbody>
		<c:forEach var="Data" items="${requestScope.DataTable}" > <!--m? vòng l?p for -->
		<tr>
			<td>${Data.ResultId}</td>
			<td>${Data.Point}</td> 
			<td>${Data.StudentId}</td>
			<td>${Data.SubjectId}</td>
			<td>
				<a  class="btn btn-success" href="/editResult?ResultId=${Data.ResultId}" role="button">Edit</a> | 
				<a class="btn btn-warning" href="/deleteResult?ResultId=${Data.ResultId}" role="button">Delete</a> |
				<a class="btn btn-danger" href="/detailsResult?ResultId=${Data.ResultId}" role="button">Details</a> 
			</td>
		</tr>
		</c:forEach>
	  </tbody>
	</table>
	<div class="row">
		<div class="col-6">
			<a class="btn btn-primary" href="/addResult" role="button">Add a new Result</a>
		</div>
		<div class="col-6">
			<nav aria-label="Page navigation example  text-end">
			  <ul class="pagination">
			  <li class="page-item"><a class="page-link" href="result?Page=0">0</a></li>
				<li class="page-item"><a class="page-link" href="result?Page=1">1</a></li>
				<li class="page-item"><a class="page-link" href="result?Page=2">2</a></li>
				<li class="page-item"><a class="page-link" href="result?Page=3">3</a></li>
				<li class="page-item"><a class="page-link" href="result?Page=4">4</a></li>
				<li class="page-item"><a class="page-link" href="result?Page=5">5</a></li>
			  </ul>
			</nav>
		</div>
	</div>


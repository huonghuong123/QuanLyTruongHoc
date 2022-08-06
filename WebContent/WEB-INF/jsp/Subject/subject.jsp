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

	<h1 class="text-center">Subject List</h1>
    <table class="table table-bordered border-primary">
	  <thead>
		<tr>
			<th>Subject Id</th>
			<th>Name Subject</th>
			<th>Actions</th>
		</tr>
	  </thead>
	  <tbody>
		<c:forEach var="Data" items="${requestScope.DataTable}" > <!--m? vòng l?p for -->
		<tr>
			<td>${Data.SubjectId}</td>
			<td>${Data.NameSubject}</td> 
			
			<td>
				<a class="btn btn-success" href="/editSubject?SubjectId=${Data.SubjectId}" role="button">Edit</a> | 
				<a class="btn btn-warning" href="/deleteSubject?SubjectId=${Data.SubjectId}" role="button">Delete</a> |
				<a class="btn btn-danger" href="/detailsSubject?SubjectId=${Data.SubjectId}" role="button">Details</a> 
			</td>
		</tr>
		</c:forEach>
	  </tbody>
	</table>
<a class="btn btn-primary" href="/addSubject" role="button">Add a new Subject</a>
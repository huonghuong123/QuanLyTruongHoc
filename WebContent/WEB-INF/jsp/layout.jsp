<%-- 
    Document   : _layout2
    Created on : Jun 11, 2022, 3:26:41 PM
    Author     : Administrator
--%>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html;" charset="utf-8">
        <title>${web_title}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Manage_Student</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Result">Result</a>
        </li>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="home">Student</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="subject">Subject</a>
	    </li>
	    <li class="nav-item">
	   	  <a class="nav-link" href="class">Class</a>
	    </li> 
      </ul>
    </div>
  </div>
</nav>
        <div class="container">
                <jsp:include page="${web_content}" />
        </div>

    </body>
    
    <footer>
	<hr>
        <%
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String date = sdf.format(new Date());
          %>
	Copyright &copy; <%=date%> Mai Phát Duy & La Thị Hường
    </footer>
</html>

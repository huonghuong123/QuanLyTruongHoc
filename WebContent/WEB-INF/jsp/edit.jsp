<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="/edit?StudentId=${Data.StudentId}" class="g-3 needs-validation">
			<h4>Edit Student</h4>
			<p>Please complete all information</p>
			  <div class="mb-3">
			  	<label for="StudentId" class=" form-label">StudentId:</label>
			    <input type="text" class="form-control" name="StudentId" id="StudentId"  placeholder="StudentId" value="${Data.StudentId}" readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  	<label for="ClassId" class=" form-label">ClassId:</label>
			    <input type="text" class="form-control" name="ClassId" id="ClassId"  placeholder="ClassId" value="${Data.ClassId}" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label for="NameStudent" class=" form-label">NameStudent:</label>
			    <input type="text" class="form-control" name="Name" id="NameStudent" placeholder="NameStudent" value="${Data.Name}" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			<br class="clear_float">		
			<button class="btn btn-primary form-control">Save</button>
		</form>
	</div>
</div>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="editResult?ResultId=${Data.ResultId}" class="g-3 needs-validation">
			<h4>Edit Result</h4>
			<p>Please complete all information</p>
			  <div class="mb-3">
			  	<label for="ResultId" class=" form-label">ResultId:</label>
			    <input type="text" class="form-control" name="ResultId" id="ResultId"  placeholder="StudentId" value="${Data.ResultId}" readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  	<label for="Point" class=" form-label">Point:</label>
			    <input type="text" class="form-control" name="Point" id="Point"  placeholder="Point" value="${Data.Point}" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label for="StudentId" class=" form-label">StudentId:</label>
			    <input type="text" class="form-control" name="StudentId" id="StudentId" placeholder="StudentId" value="${Data.StudentId}" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label for="SubjectId" class=" form-label">SubjectId:</label>
			    <input type="text" class="form-control" name="SubjectId" id="SubjectId" placeholder="SubjectId" value="${Data.SubjectId}" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			<br class="clear_float">		
			<button class="btn btn-primary form-control">Save</button>
		</form>
	</div>
</div>
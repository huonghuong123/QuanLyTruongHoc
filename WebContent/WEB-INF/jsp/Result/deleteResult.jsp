<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="/deleteResult?ResultId=${Data.ResultId}" class="g-3 needs-validation">
			<h4>Delete Result</h4>
			<p>Please complete all information</p>
			  <div class="mb-3">
			  	<label for="ResultId" class=" form-label">ResultId:</label>
			    <input type="text" class="form-control" name="ResultId" id="ResultId"  placeholder="ResultId" value="${Data.ResultId}" readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  	<label for="Point" class=" form-label">Point:</label>
			    <input type="text" class="form-control" name="Point" id="Point"  placeholder="Point" value="${Data.Point}" required readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label for="StudentId" class=" form-label">StudentId:</label>
			    <input type="text" class="form-control" name="StudentId" id="StudentId" placeholder="StudentId" value="${Data.StudentId}" required readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label for="SubjectId" class=" form-label">SubjectId:</label>
			    <input type="text" class="form-control" name="SubjectId" id="SubjectId" placeholder="SubjectId" value="${Data.SubjectId}" required readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			<br class="clear_float">	
			<label style="width: 100%;text-align: left;">Are you sure want to delete?</label>	
			<button class="btn btn-primary form-control">Delete</button>
		</form>
	</div>
</div>



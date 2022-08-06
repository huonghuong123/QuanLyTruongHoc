<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="/addSubject" class="g-3 needs-validation">
				<h4>Add a new Subject</h4>
				<p>Please complete all information</p>
			  <div class="mb-3">
			  	<label>SubjectId:</label>
			    <input type="number" class="form-control" name="SubjectId"  placeholder="SubjectId" value="" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  	<label>NameSubject:</label>
			    <input type="text" class="form-control" name="NameSubject"  placeholder="NameSubject" value="" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			<button class="btn btn-primary form-control">Save</button>
	
		</form>
	</div>
</div>

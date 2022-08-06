<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="/addResult" class="g-3 needs-validation">
				<h4>Add a new Result</h4>
				<p>Please complete all information</p>
			  <div class="mb-3">
			  	<label>Point:</label>
			    <input type="number" class="form-control" name="Point"  placeholder="Point" value="" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  	<label>StudentId:</label>
			    <input type="number" class="form-control" name="StudentId"  placeholder="StudentId" value="" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label>NameSubject:</label>
			    <select class="form-select" name="SubjectId"  aria-label="select example" required>
			      <option value="">Open this select Subject Menu</option>
			      <option value="1">Toán</option>
			      <option value="2">Anh</option>
			      <option value="3">Văn</option>
			      <option value="4">Lý</option>
			    </select>
			    <div class="invalid-feedback">Please choose one</div>
			  </div>
			<button class="btn btn-primary form-control">Save</button>
	
		</form>
	</div>
</div>

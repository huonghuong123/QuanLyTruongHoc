<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="/add" class="g-3 needs-validation">
				<h4>Add a new Student</h4>
				<p>Please complete all information</p>
				<div class="mb-3">
			  <label>StudentId:</label>
			    <input type="number" class="form-control" name="StudentId"  placeholder="StudentId" value="" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label>NameStudent:</label>
			    <input type="text" class="form-control" name="Name"  placeholder="NameStudent" value="" required>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label>NameClass:</label>
			    <select class="form-select" name="ClassId"  aria-label="select example" required>
			      <option value="">Open this select Class Menu</option>
			      <option value="1">K34DL</option>
			      <option value="2">K34DH</option>
			      <option value="3">K33DL</option>
			      <option value="4">K33DH</option>
			    </select>
			    <div class="invalid-feedback">Please choose one</div>
			  </div>
			<br class="clear_float">
			
			<button class="btn btn-primary form-control">Save</button>
	
		</form>
	</div>
</div>


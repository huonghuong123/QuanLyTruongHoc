<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="/detailsClass?ClassId=${Data.ClassId}" class="g-3 needs-validation">
			<h4>Details Class</h4>
			<p>Please complete all information</p>
			  <div class="mb-3">
			  	<label for="StudentId" class=" form-label">ClassId:</label>
			    <input type="text" class="form-control" name="ClassId" id="ClassId"  placeholder="ClassId" value="${Data.ClassId}" readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label for="NameClass" class=" form-label">NameClass:</label>
			    <input type="text" class="form-control" name="NameClass" id="NameClass" placeholder="NameClass" value="${Data.NameClass}" readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
		</form>
	</div>
</div>


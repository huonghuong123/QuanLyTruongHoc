<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="/deleteClass?ClassId=${Data.ClassId}" class="g-3 needs-validation">
			<h4>Delete Class</h4>
			<p>Please complete all information</p>
			  <div class="mb-3">
					<label>ClassId:</label>
				<input type="number" class="form-control" name="ClassId" value="${Data.ClassId}" readonly/>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
        <label>NameClass: </label>
		<input type="text" class="form-control" name="NameClass" value="${Data.NameClass}"readonly/>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>	
						<label style="width: 100%;text-align: left;">Are you sure want to delete?</label>
			<button class="btn btn-primary form-control">Delete</button>
		</form>
	</div>
</div>
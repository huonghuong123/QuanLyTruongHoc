<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="/editSubject?SubjectId=${Data.SubjectId}" class="g-3 needs-validation">
			<h4>Edit Subject</h4>
			<p>Please complete all information</p>
			  <div class="mb-3">
					<label>SubjectId</label>
				<input type="number" class="form-control" name="SubjectId" value="${Data.SubjectId}" readonly/>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
        <label>NameSubject: </label>
		<input type="text" class="form-control" name="NameSubject" value="${Data.NameSubject}"/>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>

			<br class="clear_float">		
			<button class="btn btn-primary form-control">Save</button>
		</form>
	</div>
</div>
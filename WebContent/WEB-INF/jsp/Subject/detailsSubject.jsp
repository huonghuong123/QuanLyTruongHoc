<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class=" justify-content-center  row">
	<div class="col-6 bg-light  m-5 px-5 py-3 border">
		<form method="post" action="/detailsSubject?SubjectId=${Data.SubjectId}" class="g-3 needs-validation">
			<h4>Details Subject</h4>
			<p>Please complete all information</p>
			  <div class="mb-3">
			  	<label for="SubjectId" class=" form-label">SubjectId:</label>
			    <input type="text" class="form-control" name="SubjectId" id="SubjectId"  placeholder="SubjectId" value="${Data.SubjectId}" readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
			  <div class="mb-3">
			  <label for="NameSubject" class=" form-label">NameSubject:</label>
			    <input type="text" class="form-control" name="NameSubject" id="NameSubject" placeholder="NameSubject" value="${Data.NameSubject}" readonly>
			    <div class="valid-feedback">
			      Looks good!
			    </div>
			  </div>
		</form>
	</div>
</div>


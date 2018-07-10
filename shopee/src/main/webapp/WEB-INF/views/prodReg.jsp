<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
	<%@include file="templates/navbar.jsp"%>
	<form:form class="form-horizontal" modelAttribute="product"
		action="regProd1" method="post" enctype="multipart/form-data">
		<fieldset>

			<!-- Form Name -->
			<legend>PRODUCT REGISTRATION</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Supplier
					ID</label>
				<div class="col-md-8">
					<form:select path="supplierid" items="${supplierlist}"
						itemLabel="suppliername" itemValue="supplierid" />
					<span class="help-block">ID of supplier</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Product
					Name</label>
				<div class="col-md-8">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="name" />
					<span class="help-block">Enter product name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Stock</label>
				<div class="col-md-8">
					<form:input id="textinput" path="stock" name="textinput"
						type="text" placeholder="" class="form-control input-md"
						required="" />
					<span class="help-block">Enter number of pieces</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Price</label>
				<div class="col-md-8">
					<form:input id="textinput" path="price" name="textinput"
						type="text" placeholder="" class="form-control input-md"
						required="" />
					<span class="help-block">Enter product price</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category
					ID</label>
				<div class="col-md-8">
					<form:select path="categoryid" items="${catlist}"
						itemLabel="categoryname" itemValue="categoryid" />
					<span class="help-block">Category of product</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Description</label>
				<div class="col-md-8">
					<form:textarea id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="description" />
					<span class="help-block">Enter small description</span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Image 1</label>
				<div class="col-md-8">
					<input type="file" name="image1" />
					<span class="help-block">Choose a file</span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Image 2</label>
				<div class="col-md-8">
					<input type="file" name="image2" />
					<span class="help-block">Choose a file</span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Image 3</label>
				<div class="col-md-8">
					<input type="file" name="image3" />
					<span class="help-block">Choose a file</span>
				</div>
			</div>
			

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-8">
					<button id="Submit" name="Submit" class="btn btn-success">Submit</button>
					<button id="Reset" name="Reset" class="btn btn-danger">Reset</button>
				</div>
			</div>


		</fieldset>
	</form:form>
	<br>
	<br>
	<br>
	<br>
	<div style="overflow-x: auto;">
		<table class="table table-hover" border="1">
			<thead>
				<tr>
					<th>Image</th>
					<th>Product ID</th>
					<th>Category ID</th>
					<th>Supplier ID</th>
					<th>Description</th>
					<th>Name</th>
					<th>Price</th>
					<th>Stock</th>
					<th>Edit</th>
					<th>Delete</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${prodlist}" var="pro">
					<tr>
						<td><img
							src="${pageContext.request.contextPath}/resources/images/${pro.code}/1.jpg"
							height="200px" width="200px" /></td>
						<td>${pro.prodid}</td>
						<td>${pro.categoryid}</td>
						<td>${pro.supplierid}</td>
						<td>${pro.description}</td>
						<td>${pro.name}</td>
						<td>${pro.price}</td>
						<td>${pro.stock}</td>
						<td><a href="updateProduct/${pro.prodid}"
							class="fas fa-edit btn btn-info"></a></td>
						<td><a href="deleteProd/${pro.prodid}"
							class="fas fa-trash-alt btn btn-danger"></a></td>

					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>
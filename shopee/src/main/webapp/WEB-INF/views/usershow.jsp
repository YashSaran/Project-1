<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<title>Insert title here</title>
</head>
<body>
	<form:form class="form-horizontal" modelAttribute="user"
		action="${pageContext.request.contextPath}/billing" method="post">
		<form:hidden path="userid" />
		<fieldset>

			<!-- Form Name -->
			<legend>Form Name</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Name</label>
				<div class="col-md-8">
					<form:input id="textinput" path="name" name="textinput" type="text"
						placeholder="Name" class="form-control input-md" required="" />
					<span class="help-block">please input full name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">E-Mail
					ID</label>
				<div class="col-md-8">
					<form:input id="textinput" path="emailid" name="textinput"
						type="text" placeholder="E-mail" class="form-control input-md"
						required="" />
					<span class="help-block">Please enter your E-Mail</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Mobile
					Number</label>
				<div class="col-md-8">
					<form:input id="textinput" path="mobile" name="textinput"
						type="text" placeholder="8853612457" class="form-control input-md" />
					<span class="help-block">Please enter your mobile number</span>
				</div>
			</div>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Address</label>
				<div class="col-md-8">
					<form:input id="textinput" path="address" name="textinput"
						type="text" placeholder=" " class="form-control input-md" />
					<span class="help-block">Please enter your address</span>
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="passwordinput">Password
				</label>
				<div class="col-md-8">
					<form:input id="passwordinput" path="password" name="passwordinput"
						type="password" placeholder="Enter Password "
						class="form-control input-md" required="" />
					<span class="help-block">Enter Password </span>
				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id"></label>
				<div class="col-md-8">
					<button id="button1id" name="button1id" type="submit"
						class="btn btn-success">Submit</button>
					<button id="button2id" name="button2id" class="btn btn-danger">Cancel</button>
				</div>
			</div>

		</fieldset>
	</form:form>
</body>
</html>
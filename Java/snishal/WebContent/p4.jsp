<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Program 4</title>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/materialize.min.css">
	</head>
	<body>
		<div class="container">
			<form class="col s12" action="p4.jsp" method="post">
				<div class="row">
					<div class="input-field col s6">
						<i class="material-icons prefix">input</i>
						<input id="name" type="text" class="validate" name="name" required>
						<label for="name">Name</label>
					</div>
					<div class="input-field col s6">
						<button class="btn waves-effect waves-light" type="submit" name="submit">Submit
						<i class="material-icons right">send</i>
						</button>
					</div>
				</div>
			</form>
		</div>
		<div class="container center-align">
			<jsp:useBean id = "mybean" class="snishal.MyBean" />
			<c:out value="${ mybean.quote } ${ param.name }"></c:out>  
		</div>
	</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</html>
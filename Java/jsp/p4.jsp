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
			<jsp:useBean id = "mybean" class="java.util.Date" />
<c:choose>
<c:when test="${clock.hours < 12}">
<h1>Good mornidsfsdng!</h1>
</c:when>
<c:when test="${clock.hours < 18}">
<h1>Good day!</h1>
</c:when>
<c:otherwise>
<h1>Good evening!</h1>
</c:otherwise>
</c:choose>
<h2><c:out value = "${param.name}" /></h2>
		</div>
	</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</html>
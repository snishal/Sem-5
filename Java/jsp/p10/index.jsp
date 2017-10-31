<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Program 10</title>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="../css/materialize.min.css">
	</head>
	<body>
		<div class="container">
			<form class="col s12" action="index.jsp" method="post">
				<div class="row">
					<form method="post" action="index.jsp">
						<div class="input-field col s6">
							<i class="material-icons prefix">account_circle</i>
							<input id="name" type="text" class="validate" name="name" required>
							<label for="name">Name</label>
						</div>
						<div class="input-field col s6">
							<button class="btn waves-effect waves-light" type="submit" name="action" value="true">Submit
							<i class="material-icons right">send</i>
							</button>
						</div>
					</form>
				</div>
			</form>
		</div>
		<c:if test="${ param.action }">
			<c:set var = "uname" value={param.name} scope="session" />
			<jsp:forward page="product.jsp" />
		</c:if>
	</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
</html>
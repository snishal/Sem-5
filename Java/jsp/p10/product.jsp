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
			<c:out value="{uname}" />
			<form class="col s12" action="p1.jsp" method="post">
				<div class="row">
					<form method="post" action="product.jsp">
						<p>
					      <input type="checkbox" id="chk1" name="chk"/>
					      <label for="chk1">Product1</label>
					    </p>
					    <p>
					      <input type="checkbox" id="chk2" name="chk"/>
					      <label for="chk2">Product2</label>
					    </p>
					    <p>
					      <input type="checkbox" id="chk3" name="chk" />
					      <label for="chk3">Product3</label>
					    </p>
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
			<c:set var = "product" value={param.chk} scope="session" />
			<jsp:forward page="product.jsp" />
		</c:if>
	</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
</html>
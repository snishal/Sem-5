<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Program 3</title>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/materialize.min.css">
</head>
<body>


	<jsp:useBean id="user" class="snishal.User" scope="request">
	</jsp:useBean>
	<div class="container">
		<form class="col s12" action="validate.jsp" method="post">
			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">person_pin</i>
					<input id="name" type="text" class="validate" name="name">
					<label for="name">Name</label>
				</div>
				<c:choose>
					<c:when test="${ not user.isValidName() }">
						<font color='red'><c:out value="invalid" /></font>
					</c:when>
				</c:choose>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">date_range</i>
					<input id="dob" type="date" class="validate" name="dob">
				</div>
				<c:choose>
					<c:when test="${ not user.isValidDob() }">
						<font color='red'><c:out value="invalid" /></font>
					</c:when>
				</c:choose>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">email</i>
					<input id="email" type="text" class="validate" name="email">
					<label for="email">Email-Address</label>
				</div>
				<c:choose>
					<c:when test="${ not user.isValidEmail() }">
						<font color='red'><c:out value="invalid" /></font>
					</c:when>
				</c:choose>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">input</i>
					<input id="lucky" type="number" class="validate" name="luckyNumber">
					<label for="lucky">LuckyNumber</label>
				</div>
				<c:choose>
					<c:when test="${ not user.isValidLuckyNumber() }">
						<font color='red'><c:out value="invalid" /></font>
					</c:when>
				</c:choose>
			</div>
			 <div class='row'> 
				<h3>Favourite Foods</h3>
				<c:choose>
					<c:when test="${ not user.isValidFavFood() }">
						<font color='red'><c:out value="invalid" /></font>
					</c:when>
				</c:choose>
			 	 <p>
			      <input type="checkbox" id="test5" name="favFood" value="p" />
			      <label for="test5">Pizza</label>
			    </p>
			    <p>
			      <input type="checkbox" id="test6" name="favFood" value="b" />
			      <label for="test6">Burger</label>
			    </p>
			    <p>
			      <input type="checkbox" id="test7" name="favfood" value="s" />
			      <label for="test7">Sandwich</label>
			    </p>
			 </div>
			 <div class="row">
			 	<div class="input-field col s6">
					<button class="btn waves-effect waves-light" type="submit" name="submit">Submit
					<i class="material-icons right">send</i>
					</button>
				</div>
			 </div>
		</form>
	</div>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
</html>
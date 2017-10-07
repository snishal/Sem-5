<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Program 5</title>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/materialize.min.css">
	</head>
	<body>
		<div class="container">
			<form class="col s12" action="p1.jsp" method="post">
				<div class="row">
					<div class="input-field col s6">
						<i class="material-icons prefix">input</i>
						<input id="number" type="number" class="validate" name="num" required>
						<label for="number">Number</label>
					</div>
				</div>
				<div class="row">
					<p>
						<input name="group1" type="radio" id="1" value="1" checked />
						<label for="1">Odd</label>
					</p>
					<p>
						<input name="group1" type="radio" id="2" value="2"/>
						<label for="2">Even</label>
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
		<div class="container center-align">
			<c:choose>
				<c:when test = "${param.group1 == 1}">
					<c:out value = "ForEach" /><br/>
					<c:forEach begin = "0" end = "${ fn: length(param.num)}" var = "i" step = "2">
						
					</c:forEach>
				</c:when>
				<c:when test = "${param.group1 == 2}">
					<% 
						out.print("Scriptlet <br/>");
						int n = Integer.parseInt(request.getParameter("num"));
						int i,j;
						for (i = 1; i <= n; i++) {
							for(j = 1; j <= i; j++){
								out.print(j + " ");
							}
							out.print("<br />");
						}
					 %>
				</c:when>	
			</c:choose>
		</div>
	</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</html>
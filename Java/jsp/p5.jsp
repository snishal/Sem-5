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
			<form class="col s12" action="p5.jsp" method="post">
				<div class="row">
					<div class="input-field col s6">
						<i class="material-icons prefix">input</i>
						<input id="word" type="text" class="validate" name="word" required>
						<label for="word">Word</label>
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
			<c:set var="flag" value="true" />
			${fn:toLowerCase(param.word)}  
			<c:choose>
				<c:when test = "${param.group1 == 1}">
					<c:forEach begin = "0" end = "${ fn: length(param.word) - 1}" var = "i" step = "2">
						<c:if test="${fn:substring(param.word, i, i+1) != 'a' && fn:substring(param.word, i, i+1) != 'e' && fn:substring(param.word, i, i+1) != 'i' && fn:substring(param.word, i, i+1) != 'o' && fn:substring(param.word, i, i+1) != 'u'}" >
							<c:set var="flag" value="false" />
						</c:if>
					</c:forEach>
				</c:when>
				<c:when test = "${param.group1 == 2}">
					<c:forEach begin = "1" end = "${ fn: length(param.word) - 1}" var = "i" step = "2">
						<c:if test="${fn:substring(param.word, i, i+1) != 'a' && fn:substring(param.word, i, i+1) != 'e' && fn:substring(param.word, i, i+1) != 'i' && fn:substring(param.word, i, i+1) != 'o' && fn:substring(param.word, i, i+1) != 'u'}" >
							<c:set var="flag" value="false" />
						</c:if>
					</c:forEach>
				</c:when>	
			</c:choose>
			<c:if test="${flag}" >
				<c:out value="You Win" />
			</c:if>
			<c:if test="${!flag}">
				<c:out value="You Loose" />
			</c:if>
		</div>
	</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</html>
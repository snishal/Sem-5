<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="user" class="snishal.User" scope="request">
	<jsp:setProperty name="user" property="*" />
</jsp:useBean>
<c:choose>
	<c:when test="${ user.isValid() }">
		<jsp:forward page="valid.html"></jsp:forward>
	</c:when>
	<c:otherwise>
		<jsp:forward page="p3.jsp"></jsp:forward>
	</c:otherwise>
</c:choose>

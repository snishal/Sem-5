<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
	*{
		margin-top: 5%;
		font-size: 30px;
		letter-spacing: 1.2px;
		text-align: center;
	}
</style>
<c:choose>
	<c:when test="${param.group2 == 1}">
		<c:out value = "Used Core" /><br/><br/>
		<c:choose>
			<c:when test="${param.group1=='add'}">
				<c:out value = "Addition : "/>
				<c:out value="${param.num1+param.num2}" />
			</c:when>
			<c:when test="${param.group1 == 'sub'}">
				<c:out value = "Subtraction : "/>
				<c:out value="${param.num1-param.num2}" />
			</c:when>
			<c:when test="${param.group1 == 'mul'}">
				<c:out value = "Multiplication : "/>
				<c:out value="${param.num1*param.num2}" />
			</c:when>
		</c:choose>
	</c:when>

	<c:when test="${param.group2 == 2}">
		<%
			String operation = request.getParameter("group1");
			int op1 = Integer.parseInt(request.getParameter("num1"));
			int op2 = Integer.parseInt(request.getParameter("num2"));
			out.print("Scriptlet <br/><br/>");
			if(operation.equals("add")){
				out.print("Addition : " + (op1 + op2));
			}else if(operation.equals("sub")){
				out.print("Subtraction : " + (op1 - op2));
			}else if(operation.equals("mul")){
				out.print("Multiplication : " + (op1 * op2));
			}
		%>
	</c:when>

</c:choose>
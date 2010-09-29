<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("success.jsp");
	}
%>
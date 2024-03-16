<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Redirecting...</title>
</head>
<body>
	<%
String ans = request.getParameter("lang");

if (ans != null && !ans.isEmpty()) {
    if (ans.equals("Java")) {
        response.sendRedirect("java.html");
    } else if (ans.equals("Python")) {
        response.sendRedirect("python.html");
    } else if (ans.equals("SQL")) {
        response.sendRedirect("sql.html");
    } else if (ans.equals("JavaScript")) {
        response.sendRedirect("js.html");
    } else {
        out.print("Invalid input");
    }
} else {
    out.print("Invalid input");
}
%>
</body>
</html>

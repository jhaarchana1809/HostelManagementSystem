<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty msg}">
    <script type="text/javascript">
        alert("${msg}");
     // Redirect to the login page after the alert
        window.location.href = 'userlogin.html';
    </script>
</c:if>
</body>
</html>
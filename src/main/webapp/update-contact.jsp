<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Contact</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<h2>Update Contact</h2>

<form action="UpdateContactServlet" method="post">

<input type="hidden"
name="cookieName"
value="<%= request.getParameter("cookieName") %>">

Name:
<input type="text"
name="name"
value="<%= request.getParameter("name") %>" required>

<br><br>

Phone:
<input type="text"
name="phone"
value="<%= request.getParameter("phone") %>" required>

<br><br>

Email:
<input type="email"
name="email"
value="<%= request.getParameter("email") %>" required>

<br><br>

<input type="submit" value="Update Contact">

</form>

<br>

<a href="view-contacts.jsp">Back</a>

</body>
</html>
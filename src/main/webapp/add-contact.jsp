<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Contact</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<h2>Add Contact</h2>

<form action="AddContactServlet" method="post">

Name:
<input type="text" name="name" required>

<br><br>

Phone:
<input type="text" name="phone" required>

<br><br>

Email:
<input type="email" name="email" required>

<br><br>

<input type="submit" value="Add Contact">

</form>

<br>

<a href="index.jsp">Back</a>

</body>
</html>
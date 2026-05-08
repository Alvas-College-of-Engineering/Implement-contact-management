<%@ page import="javax.servlet.http.Cookie" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Contacts</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<h2>All Contacts</h2>

<table border="1">

<tr>
<th>Name</th>
<th>Phone</th>
<th>Email</th>
<th>Update</th>
<th>Delete</th>
</tr>

<%
Cookie[] cookies = request.getCookies();

if(cookies != null)
{
    for(Cookie c : cookies)
    {
        if(c.getName().startsWith("contact"))
        {
            String[] details = c.getValue().split("\\|");

            if(details.length == 3)
            {
%>

<tr>

<td><%= details[0] %></td>
<td><%= details[1] %></td>
<td><%= details[2] %></td>

<td>

<a href="update-contact.jsp?
cookieName=<%= c.getName() %>
&name=<%= details[0] %>
&phone=<%= details[1] %>
&email=<%= details[2] %>">

Update

</a>

</td>

<td>

<a href="DeleteContactServlet?name=<%= c.getName() %>">

Delete

</a>

</td>

</tr>

<%
            }
        }
    }
}
%>

</table>

<br>

<a href="index.jsp">Back</a>

</body>
</html>
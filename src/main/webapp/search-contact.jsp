<%@ page import="javax.servlet.http.Cookie" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Contact</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<h2>Search Contact</h2>

<form method="get">

Enter Name:
<input type="text" name="searchName" required>

<input type="submit" value="Search">

</form>

<br>

<%
String search = request.getParameter("searchName");

boolean found = false;

if(search != null)
{
    Cookie[] cookies = request.getCookies();

    if(cookies != null)
    {
        for(Cookie c : cookies)
        {
            if(c.getName().startsWith("contact"))
            {
                String[] details = c.getValue().split("\\|");

                if(details[0].equalsIgnoreCase(search))
                {
                    found = true;
%>

<p>Name: <%= details[0] %></p>
<p>Phone: <%= details[1] %></p>
<p>Email: <%= details[2] %></p>

<hr>

<%
                }
            }
        }
    }

    if(!found)
    {
%>

<p>Contact Not Found</p>

<%
    }
}
%>

<br>

<a href="index.jsp">Back</a>

</body>
</html>
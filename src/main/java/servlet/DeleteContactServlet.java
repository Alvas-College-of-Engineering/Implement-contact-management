package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/DeleteContactServlet")
public class DeleteContactServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException
    {
        String cookieName =
                request.getParameter("name");

        Cookie cookie =
                new Cookie(cookieName, "");

        cookie.setMaxAge(0);

        response.addCookie(cookie);

        response.sendRedirect("view-contacts.jsp");
    }
}
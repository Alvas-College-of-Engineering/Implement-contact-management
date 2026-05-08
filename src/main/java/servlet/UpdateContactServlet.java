package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/UpdateContactServlet")
public class UpdateContactServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException
    {
        String cookieName =
                request.getParameter("cookieName");

        String name =
                request.getParameter("name");

        String phone =
                request.getParameter("phone");

        String email =
                request.getParameter("email");

        String updatedData =
                name + "|" + phone + "|" + email;

        Cookie updatedCookie =
                new Cookie(cookieName, updatedData);

        response.addCookie(updatedCookie);

        response.sendRedirect("view-contacts.jsp");
    }
}
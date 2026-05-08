package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/AddContactServlet")
public class AddContactServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException
    {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        String data = name + "|" + phone + "|" + email;

        Cookie cookie =
                new Cookie("contact" + System.currentTimeMillis(),
                        data);

        response.addCookie(cookie);

        response.sendRedirect("view-contacts.jsp");
    }
}
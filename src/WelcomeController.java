import java.io.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class WelcomeController extends HttpServlet {


    public void init(ServletConfig config) throws ServletException
    {
        super.init(config);
    }

    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
        throws ServletException, IOException
    {
        response.setContentType("text/html");

        String message = "Hello Kickstarter";

        PrintWriter out = response.getWriter();
        out.println("<h1>" + message + "</h1>");
    }
}

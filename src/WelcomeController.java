import java.io.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class WelcomeController extends HttpServlet {

    private String greeting, lastUser = "Nog niemand...";
    private int counter = 0;
    private ServletConfig config;
    private	static Logger logger = Logger.getLogger(WelcomeController.class.getName());

    public void init(ServletConfig config) throws ServletException
    {
        super.init(config);
        this.config = config;
        greeting = "Welcome ";
        System.out.print("Init Script");
    }

    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
        throws ServletException, IOException
    {
        response.setContentType("text/html");
        String message = "Hello Ant opdracht 3";
        PrintWriter out = response.getWriter();
        out.println("<h1>" + message + "</h1>");
    }

    private void sayHello(){
        logger.info("null pointer?");
        ArrayList<String> todo = new ArrayList<>();
        todo.add(0, "Maak een NullPointer- en IndexOutOfPointException");

        try{
            todo.get(3);
        }catch(IndexOutOfBoundsException e){
            logger.info("dit item bestaad niet, en hoef je dus niet te doen :D");
        }catch(Exception e){
            logger.info("is een exception");
        }
    }

    public void destroy()
    {
        // clean application
    }
}

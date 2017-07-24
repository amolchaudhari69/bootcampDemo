// Import required java libraries
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

// Extend HttpServlet class
public class HelloWorld extends HttpServlet {
 
   private String message;

   public void init() throws ServletException {
      // Do required initialization
      message = "Hello World";
   }

   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      // Set response content type
      response.setContentType("text/html");
 
      // Actual logic goes here.
      PrintWriter out = response.getWriter();
      
      String str="{\"empId\":\"1234\",\"empName\":\"Test Emp\",\"contactNo\":\"9766330822\",\"department\":\"SD\",\"family\":\"OnlyMe\"}";
      out.println(str);
   }

   public void destroy() {
      // do nothing.
   }
}
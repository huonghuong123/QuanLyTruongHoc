package Result;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 * https://stackoverflow.com/questions/5935892/if-else-within-jsp-or-jstl
 * https://www.tutorialspoint.com/how-to-fetch-only-a-single-result-from-a-table-in-java-mysql
 */
@WebServlet(urlPatterns = {"/deleteResult", "/xoaresult"})
public class deletetResultServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //processRequest(request, response);
                
        try 
        {
            String id = request.getParameter("ResultId");
 
            // G??????i d?????? li???????u t?????? Controller sang View
            request.setAttribute("Data",Result.Details(id));
            request.setAttribute("web_title","Delete Result");
            request.setAttribute("web_content","Result/deleteResult.jsp");
            request.getRequestDispatcher("/WEB-INF/jsp/layout.jsp").forward(request, response);
        } 
        catch (Exception ex) 
        {
            System.out.println("SQL Error: "+ex.getMessage());
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * https://stackoverflow.com/questions/4971877/how-to-transfer-data-from-jsp-to-servlet-when-submitting-html-form
     * https://ofstack.com/Java/7547/a-java-utility-class-that-connects-to-a-mysql-database.html
     * https://www.vogella.com/tutorials/MySQLJava/article.html
     * https://ict.iitk.ac.in/forum/topic/java-sql-sqlexception-parameter-index-out-of-range-1-number-of-parameters-which-is-0/
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
        try 
        {
            String id = request.getParameter("ResultId");
                    
            HashMap<Integer,String> data = new HashMap();
            data.put(1, id);
            
            // Th??????c thi c????u SQL DELETE
            Result.Delete(data);
        
            HttpSession session = request.getSession();
            session.setAttribute("SUCCESS_MSG", "Delete Success!");
            
            response.sendRedirect("/home");
        } 
        catch (Exception ex) 
        {
            System.out.println("SQL Error: "+ex.getMessage());    
        }
        
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

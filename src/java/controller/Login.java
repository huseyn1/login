
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;


public class Login extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String uname=request.getParameter("uname");
        String pass=request.getParameter("pass");
        
        User user=new User(uname, pass);
        
        if(user!=null){
        
            HttpSession session=request.getSession();
            session.setAttribute("username", uname);
        response.sendRedirect("welcome.jsp");
        }
        else{
        
        response.sendRedirect("index.jsp");
        }
                

    }



}

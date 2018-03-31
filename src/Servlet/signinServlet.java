package Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;

import service.LoginService;

@WebServlet("/signinServlet")
public class signinServlet extends javax.servlet.http.HttpServlet{
	protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String account = request.getParameter("name");
        String password = request.getParameter("pwd");
        if(account.equals("")||password.equals("")){

            out.println("<script languagehttp = 'javascript'> window.location='signin.jsp';alert('«Î ‰»Î’À∫≈√‹¬Î') </script>" );
        }
        LoginService loginService= new LoginService();
        if(loginService.login(account,password)) {
        	out.println("<script languagehttp = 'javascript'> window.location='index.jsp';alert('µ«¬º≥…π¶') </script>" );
        }
        else {
        	out.println("<script languagehttp = 'javascript'> window.location='signin.jsp';alert('’À∫≈ªÚ√‹¬Î¥ÌŒÛ') </script>" );
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }


}

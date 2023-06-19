/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "MonServlet2", urlPatterns = {"/MonServlet2"})
public class MonServlet2 extends HttpServlet {
    List <Listinscrire> li = new ArrayList();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        session.removeAttribute("nom");
        session.removeAttribute("prenom");
        response.sendRedirect("Connection.jsp");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String pseudo = request.getParameter("pseudo");
            String pass = request.getParameter("pass");
            

            Listinscrire i = new Listinscrire("", "", pseudo, "", pass, "");
            li.add(i);
            HttpSession session = request.getSession();
            session.setAttribute("list", li);

            this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
}


}

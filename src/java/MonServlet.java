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

/**
 *
 * @author sy.diakaridia
 */
@WebServlet(name = "MonServlet", urlPatterns = {"/MonServlet"})
public class MonServlet extends HttpServlet {
    List <Listinscrire> li = new ArrayList();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
                String non = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String pseudo = request.getParameter("pseudo");
		String mail = request.getParameter("mail");
		String pass = request.getParameter("pass");
		String pass2 = request.getParameter("pass2");
                
                // mot de pass
                
                if(!pass.equals(pass2)) {
                    response.sendRedirect(request.getContextPath() + "/Inscrire.jsp");
                    return;
                }
		
		Listinscrire i = new Listinscrire(non, prenom, pseudo, mail, pass, pass2);
		li.add(i);
		request.setAttribute("list", li);
		request.getRequestDispatcher("accueil.jsp").forward(request, response);
		
		HttpSession session = request.getSession();
		session.setAttribute("nom", non);
		session.setAttribute("prenom", prenom);
           
                //this.getServletContext().getRequestDispatcher("accueil.jsp").forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String non = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String pseudo = request.getParameter("pseudo");
        String mail = request.getParameter("mail");
        String pass = request.getParameter("pass");
        String pass2 = request.getParameter("pass2");

        // mot de pass

        if(!pass.equals(pass2)) {
            response.sendRedirect(request.getContextPath() + "/Inscrire.jsp");
            return;
        }

        Listinscrire i = new Listinscrire(non, prenom, pseudo, mail, pass, pass2);
        li.add(i);
        HttpSession session = request.getSession();
        session.setAttribute("list", li);
        
        session.setAttribute("nom", non);
        session.setAttribute("prenom", prenom);
                
        this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
    }
    
   
}

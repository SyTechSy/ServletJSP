
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Web</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="accueil.css"/>
    </head>
    <body>
         <nav>
        <!-- logo de la page -->
        <div class="logo">
            <h2>Diakaridia SY</h2>
        </div>
        <!-- élément de mon list -->
        <ul>
            <li><a href="#">Accueil</a></li>
            <li><a href="#">Apropos</a></li>
            <li><a href="#">Service</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
        
        
        <!--<a href="${pageContext.request.contextPath}/Connection.jsp"><button>Déconnection</button></a>-->
        <a href="MonServlet2"><button style="padding: 8px 20px; background: transparent; border: 1px solid #FFF;
                                      border-radius: 10px; margin-right: 20px; cursor: pointer;
                                      color: #fff">Déconnection</button></a>
        <!--<div class="icon">
            <i class="fas fa-bars"></i>
        </div>-->
    </nav>
    <!-- contenu de la page -->
    <div class="contenu">    
        <c:if test="${!empty sessionScope.prenom && !empty sessionScope.nom }">
            <h2>Bienvenu sur le site ${sessionScope.prenom } ${sessionScope.nom } !</h2>
        </c:if>
	    
    </div>
    
    <br>
    
    <section  class="table_body">
	<table>
            <thead>
            <tr>
                <th>N ° </th>
                <th>Nom</th>
                <th>Prenom</th>
                <th>Pseudo</th>
                <th>Email</th>
                <th>Mot de pass</th>
            </tr>
           </thead>
            <c:forEach items="${list}" var="Listinscrire" varStatus="statut">
           
             <tbody>
                <tr class="active-row">
                    <td>${statut.count}</td>
                    <td>${Listinscrire.nom}</td>
                    <td>${Listinscrire.prenom}</td>
                    <td>${Listinscrire.pseudo}</td>
                    <td>${Listinscrire.mail}</td>
                    <td>${Listinscrire.pass}</td>
                </tr>  
            </tbody>
            </c:forEach>
      </table>
    </section>
    </body>
</html>

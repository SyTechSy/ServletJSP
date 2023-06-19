
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page inscription</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        
	<div class="container">
        <div class="container-global">
            <!-- nom de la page -->
        <div class="name">
            <h1>Inscription</h1>
        </div>
        <!-- bars -->
        <div class="bars"></div>

        <!-- nom de la formulaire -->
        <div class="form-container">
            <form class="form" method="post" action="MonServlet">
                <!-- côté name -->
                <label for="nom">Votre nom</label> <br>
                <input type="text" name="nom" id="nom" required="required" placeholder="SY"> <br>
                
                <!-- côté prenom -->
                <label for="prenom">Votre prénom</label> <br>
                <input type="text" name="prenom" id="prenom" required="required" placeholder="Diakaridia"> <br>
    
                <!-- côté email -->
                <label for="mail">Pseudo</label> <br>
                <input type="text" name="pseudo" id="mail" required="required" placeholder="nom@example.com"> <br>
    
                <!-- côté email -->
                <label for="mail">Email</label> <br>
                <input type="email" name="mail" id="mail" required="required" placeholder="nom@example.com"> <br>
                
                <!-- côté mot de passe -->
                <label for="pass">Mot de passe</label> <br>
                <input type="password" name="pass" id="pass" required="required" placeholder="**************"> <br>
    
                <!-- côté mot de passe pour la confirmation-->
                <label for="pass2">Comfirm mot de passe</label> <br>
                <input type="password" name="pass2" id="pass2" required="required" placeholder="**************" > <br>
    
                <!-- côté inscription -->
                <div class="submit">
                    <!-- <a href="accueil.html">S'inscrire</a> -->
                    <button type="submit">S'inscrire</button>
                </div>
            </form>
        </div>
        <div class="info-ins">
            <p>Avez vous déjâ un compte. <a href="Connection.jsp">Se connecter !</a></p>
        </div>

        </div>
    </div>
    </body>
</html>

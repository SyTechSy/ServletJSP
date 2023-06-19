
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page connection</title>
        <link rel="stylesheet" href="login.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>
    </head>
    <body>
        
	<div class="container">
        <div class="container-global">
            <!-- nom de la page -->
        <div class="name">
            <h1>Connection</h1>
        </div>
        <!-- bars -->
        <div class="bars"></div>

        <!-- nom de la formulaire -->
        <div class="form-container">
            <form class="form" method="post" action="MonServlet">
                <!-- côté email -->
                <label for="nom">Pseudo</label> <br>
                <input type="text" name="pseudo" required="required" id="nom" placeholder="nom@example.com"> <br>
                
                <!-- côté motde passe -->
                <label for="pass">Mot de passe</label> <br>
                <input type="password" name="pass" required="required"  id="pass" placeholder="*************"> <br>
    
                <!-- côté inscription -->
                <div class="submit">
                    <!-- <a class="lien" href="accueil.html">Se connecter</a> -->
                    <button type="submit">Se connecter</button>
                </div>
                
            </form>
        </div>
        <div class="info-ins">
            <p>Avez vous déjâ un compte. <a href="Inscrire.jsp">Inscrivez-vous !</a></p>
        </div>

        </div>
    </div>
    </body>
</html>

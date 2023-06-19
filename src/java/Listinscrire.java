/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sy.diakaridia
 */
public class Listinscrire {
    
    private String nom;
	private String prenom;
	private String pseudo;
	private String mail;
	private String pass;
	private String pass2;

    public Listinscrire() {
    }

    public Listinscrire(String nom, String prenom, String pseudo, String mail, String pass, String pass2) {
        this.nom = nom;
        this.prenom = prenom;
        this.pseudo = pseudo;
        this.mail = mail;
        this.pass = pass;
        this.pass2 = pass2;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPass2() {
        return pass2;
    }

    public void setPass2(String pass2) {
        this.pass2 = pass2;
    }
    
        
}

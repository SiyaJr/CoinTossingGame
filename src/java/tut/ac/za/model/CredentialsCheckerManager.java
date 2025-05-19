/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.za.model;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Zanele
 */
public class CredentialsCheckerManager implements CredentialsCheckerInterface{

    @Override
    public boolean checkCreditialsValidity(String username, String password, HttpServletRequest request) {
       
     
        
        String validUsername = request.getServletContext().getInitParameter("valid_username");
        String validPassword = request.getServletContext().getInitParameter("valid_password");
        
        if(username.equals(validUsername) && password.equals(validPassword)){
        return true;
        }

        return false;

    }
    
}

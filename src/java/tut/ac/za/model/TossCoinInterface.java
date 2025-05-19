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
public interface TossCoinInterface {
    
    public String tossCoin();
    public String compareGuessToToss(String userGuess,String computerToss);
    public void updateGameStats(HttpServletRequest request,String outcome);
}

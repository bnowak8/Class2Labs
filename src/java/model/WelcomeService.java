/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.*;

/**
 *
 * @author bnowak8
 */
public class WelcomeService {
    GregorianCalendar todaysDate = new GregorianCalendar();
    int daysHour;
    private final static String MORNING = "Morning",
                 AFTERNOON = "Afternoon",
                 NIGHT = "Night",
                 HELLO = "Hello",
                 GOOD = "good";
    
public WelcomeService(){
    
}

private String determinTimeOfDay(){
    daysHour = todaysDate.get(Calendar.HOUR_OF_DAY);
    
    if(daysHour <= 8){
        return MORNING;
    }else if(daysHour > 8 && daysHour <=17){
        return AFTERNOON;
    }else{
        return NIGHT;
    }
}

public String generateWelcome(String name){
    String msg;
    msg = HELLO + " " + name + " " + GOOD + " " + determinTimeOfDay();
    return msg;
}

}
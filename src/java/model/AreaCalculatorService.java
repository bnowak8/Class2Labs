/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.text.DecimalFormat;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author mashit
 */
public class AreaCalculatorService {
    double width= 0, height = 0, area = 0, radius = 0, side = 0, side1 = 0, side2 = 0;
    String result;
    
    public void AreaCalculatorService(){
        
    }
            
    public String rectAreaCalc(HttpServletRequest request){
        String sWidth = request.getParameter("width");
        String sHeight = request.getParameter("height");
        
        try{
            width = Double.valueOf(sWidth);
            height = Double.valueOf(sHeight);
            
            area = width * height;
            
            result = "" +new DecimalFormat("#.##").format(area);
        }catch(NumberFormatException e){
            result = "You must enter a width and height!";
        }
        
        return result;
    }
    
    public String circAreaCalc(HttpServletRequest request){
        String sRadius = request.getParameter("radius");
        
        try{
            radius = Double.valueOf(sRadius);
            
            area = radius * Math.PI;
            
            result = "" + new DecimalFormat("#.##").format(area);
        }catch(NumberFormatException e){
            result = "You must enter a width and height!";
        }
        
        return result;
    }
    
    public String triSideFinder(HttpServletRequest request){
        String sSide1 = request.getParameter("1stSide");
        String sSide2 = request.getParameter("2ndSide");
        
        try{
            side1 = Double.valueOf(sSide1);
            side2 = Double.valueOf(sSide2);
            
            side = Math.sqrt((Math.pow(side1,2) + (Math.pow(side2,2))));
            
            result = "" +new DecimalFormat("#.##").format(side);
        }catch(NumberFormatException e){
            result = "You must enter a the length of two sides!";
        }
        
        return result;
    }
}

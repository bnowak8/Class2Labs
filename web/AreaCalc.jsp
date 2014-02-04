<%-- 
    Document   : AreaCalc
    Created on : Feb 2, 2014, 2:53:24 PM
    Author     : bnowak8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculators</title>
    </head>
    <body>
        <form id="rectAreaCalc" name="rectAreaCalc" method="POST" action="AreaCalc">
            <h3 style="text-decoration: underline;">Rectangle Area Calculator</h3>
            Enter Width: <input type="number" name="width">&emsp;
            Enter Height: <input type="number" name="height"><br><br>
            <button type="submit" value="submitRect" name="submitRect">Calculate</button>&emsp;&emsp;&emsp;
            Area of Rectangle:&emsp;
            ${rectResult}
        </form>        
        
        <br><br><br><br>
        
        <form id="circAreaCalc" name="circAreaCalc" method="POST" action="AreaCalc">
            <h3 style="text-decoration: underline;">Circle Area Calculator</h3>
            Enter Radius: <input type="number" name="radius"><br><br>
            <button type="submit" value="submitCirc" name="submitCirc">Calculate</button>&emsp;&emsp;&emsp;
            Area of Circle:&emsp;
            ${circResult}
  
        </form>
        
        <br><br><br><br>
        
        <form id="triSideFinder" name="triSideFinder" method="POST" action="AreaCalc">
            <h3 style="text-decoration: underline;">Triangle Side Finder</h3>
            Enter 1st Side: <input type="number" name="1stSide">&emsp;
            Enter 2nd Side: <input type="number" name="2ndSide"><br><br>
            <button type="submit" value="submitTri" name="submitTri">Calculate</button>&emsp;&emsp;&emsp;
            Length of 3rd side:&emsp;
            ${triSideResult}
        </form>
    </body>
</html>

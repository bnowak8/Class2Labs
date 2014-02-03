<%-- 
    Document   : AreaCalc
    Created on : Feb 2, 2014, 2:53:24 PM
    Author     : mashit
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
            <%
                if(request.getAttribute("rectResult") != null){
                String rectArea = (String)request.getAttribute("rectResult");
                %>
                
                <%
                out.println(rectArea);
                }else{
                    out.println("");
                }
            %>
        </form>        
        
        <br><br><br><br>
        
        <form id="circAreaCalc" name="circAreaCalc" method="POST" action="AreaCalc">
            <h3 style="text-decoration: underline;">Circle Area Calculator</h3>
            Enter Radius: <input type="number" name="radius"><br><br>
            <button type="submit" value="submitCirc" name="submitCirc">Calculate</button>&emsp;&emsp;&emsp;
            Area of Circle:&emsp;
            <%
                if(request.getAttribute("circResult") != null){
                String circArea = (String)request.getAttribute("circResult");
                out.println(circArea);
                }else{
                    out.println("");
                }
            %>
        </form>
        
        <br><br><br><br>
        
        <form id="triSideFinder" name="triSideFinder" method="POST" action="AreaCalc">
            <h3 style="text-decoration: underline;">Triangle Side Finder</h3>
            Enter 1st Side: <input type="number" name="1stSide">&emsp;
            Enter 2nd Side: <input type="number" name="2ndSide"><br><br>
            <button type="submit" value="submitTri" name="submitTri">Calculate</button>&emsp;&emsp;&emsp;
            Length of 3rd side:&emsp;
            <%
                if(request.getAttribute("triSideResult") != null){
                String triSide = (String)request.getAttribute("triSideResult");
                out.println(triSide);
                }else{
                    out.println("");
                }
            %>
        </form>
    </body>
</html>

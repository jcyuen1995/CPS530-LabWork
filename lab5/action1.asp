<!DOCTYPE html>
<html>
<head>
        <meta charset = "UTF-8">
            <title>
                Lab 5
            </title>
            <style>
                table, th, td {
                border: 1px solid black;
            }
            </style>
    </head>
<div class="center">
    <h1 class="signature">
            CPS530
        </h1>
       
        <p class ="myclass">
            Student Name: Jonathan Yuen
            <br>
            Student ID: 500582520
            <br>
        </p>
</div>
<form action= "http://webdev.scs.ryerson.ca:8080/s2dindya/j25yuen.asp
" method="get">
<select name = "color">
    <option <%
        if request.querystring("color") = "Red" then
            response.write(" selected ")
        end if
     %>>Red</option>
    <option <%
        if request.querystring("color") = "Blue" then
            response.write(" selected ")
        end if
     %>>Blue</option>
    <option <%
        if request.querystring("color") = "Green" then
            response.write(" selected ")
        end if
     %>>Green</option>
</select>
<input type = "submit">
</form>
 
<%
'cookie'
if request.cookies("last_visit") = "" Then
Response.Cookies("last_visit") =Time()
response.write("This is your first time visiting this page.")
Else  
last_visit = request.cookies("last_visit")
response.write "you visited this page on:"
response.write(last_visit)
response.cookies ("last_visit") = Time()
end if
%>
<br>
<%
'taking in url string'
color = request.querystring("color")
if color = "Red" then
    Response.write("<body bgcolor = ""tomato""> hello  world </body>")
else if color = "Blue" then
    Response.write("<body bgcolor = ""skyblue""> hello world </body>")
else if color = "Green" then
    Response.write("<body bgcolor = ""lightgreen""> hello world </body>")
else
    Response.write("<body> hello  world </body>")
end if
end if
end if
 
%>
</html>
<%-- 
    Document   : adminroomgroup
    Author     : Liu Chun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

 <html>
  <head>
   <title>groupmanage</title>
   <link href="CSS/styleHRS.css" type="text/css" rel="stylesheet">
  </head>
 <body><div align="center">
    <br>
    <% Vector<String []> vgroup = serv.database.getGroup();
     %>
    <table border="1">
     <tr bgcolor="#999999">
       <th id="thlabel">groupname</th>
       <th id="thlabel">pic</th>
       <th id="thlabel">groupdetails</th>
       <th id="thlabel">grouprules</th>
       <th id="thlabel">Edit/Del</th>
     </tr>
      <%for(String []s:vgroup){%>
      <tr>
        <td><%= s[1] %></td>
        <td><%= s[0] %></td>
        <td><%= s[2] %></td>
        <td><%= s[3] %></td>
        <td>
         <a href=listserv?action=editGroup&&groupid=<%= s[0] %>>edit/del</a>
        </td>
       </tr>
     <%}%>
    </table><br>
    <center><a href=adminaddroomgroup.jsp>addgroup</a></center></div>
 </body>
</html>
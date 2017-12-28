<%-- 
    Document   : Tracker
    Created on : Nov 3, 2017, 1:23:24 PM
    Author     : DONGRE
--%>

<%@page import="java.util.Scanner"%>
<%@page import="java.net.Socket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>GPS Tracker</h1> <br>
        
        <%
            int PORT=2851;
          String address = request.getParameter("address");
          
            %>
        <form action="Tracker.jsp">
            <input type="text" name="address">
            <input type="submit">
           
            <%
                Socket con;
                String lagt="",lat="";
                if(address!=null)
                {
                    con = new Socket(address,PORT);
                    Scanner in = new Scanner(con.getInputStream());
                    lagt = in.nextLine();
                }
            %>
            <br>
            lagt:
            <input type="text" name="lagt" value="<%= lagt%>" >
            <br>
            latt:
            <input type="text" name="latt" value="<%= lagt%>">
        </form>
        
    </body>
</html>

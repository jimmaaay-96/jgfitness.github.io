<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
            
            <%
                
int id = 0;
String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname");
String password=request.getParameter("password");
String email=request.getParameter("email");
String payment=request.getParameter("payment");
                            String myDriver = "org.gjt.mm.mysql.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/FYP?autoReconnect=true&useSSL=false";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "Ucc*62229");

            Statement preparedStmt= conn.createStatement(); 

int i=preparedStmt.executeUpdate("insert into users values ( '"+id+"', '"+fname+"', '"+lname+"', '"+password+"',  '"+email+"' )"); 
ResultSet rs; 



out.println("Thanks you for Registering as a tutor please continue ---->");
out.println("<a href='landing.html'>Home</a>");
            %>
                
                
</body>

<%-- insert code taken from https://youtu.be/3o0lQkyNuGo
--%>
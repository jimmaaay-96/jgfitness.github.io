<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
            
            <%
                
int id = 0;
String email=request.getParameter("email");
String sport=request.getParameter("sport"); 
String location=request.getParameter("location");
String price=request.getParameter("price");
String day1=request.getParameter("day1");
String day2=request.getParameter("day2");
String day3=request.getParameter("day3");


                            String myDriver = "org.gjt.mm.mysql.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/FYP?autoReconnect=true&useSSL=false";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "Ucc*62229");

            Statement preparedStmt= conn.createStatement(); 
            

int i=preparedStmt.executeUpdate("insert into Trainer_Time values ('"+id+"', '"+email+"', '"+sport+"','"+location+"','"+price+"', '"+day1+"', '"+day2+"','"+day3+"'  )"); 
ResultSet rs; 



out.println("You're Signed up as a Tutor! Return ---->");
out.println("<a href='landing.html'>Home</a>");
            %>
                
                
</body>


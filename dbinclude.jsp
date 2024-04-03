<%@ page import="java.sql.*" %>

<%  Class.forName("oracle.jdbc.driver.OracleDriver"); %>

  <% 


 Connection connection=DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:orcl","SYSTEM",  //
         "Q1w2e3r4`"
            );

        Statement statement = connection.createStatement() ;
        
%>


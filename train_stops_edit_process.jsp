<%@ include file="dbinclude.jsp" %>
<%

String stopId = request.getParameter("stopId");
String stopName = request.getParameter("stopName");


String sql = "update TrainStops set stopName='"+stopName+"' where stopId='"+stopId+"'";
       
out.print(sql);
statement.executeUpdate(sql) ;

response.sendRedirect("train_stops.jsp");

%>
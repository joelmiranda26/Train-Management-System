<%@ include file="dbinclude.jsp" %> 
<%

String stop_id = request.getParameter("stop_id");
String stop_name = request.getParameter("stop_name");


String sql = "insert into TrainStops(stopId,stopName) values ('"+stop_id+"','"+stop_name+"')";
out.print(sql);
statement.executeUpdate(sql);

response.sendRedirect("train_stops.jsp");

%>

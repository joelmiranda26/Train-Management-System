<%@ include file="dbinclude.jsp" %> 
<%

String routeline_id = request.getParameter("routeline_id");
String routeline_name = request.getParameter("routeline_name");
String start_stop = request.getParameter("start_stop");
String end_stop = request.getParameter("end_stop");


String sql = "insert into TrainRoutes(routeId,routeName,startStop,endStop) values ('"+routeline_id+"','"+routeline_name+"','"+start_stop+"','"+end_stop+"')";
out.print(sql);
statement.executeUpdate(sql);

response.sendRedirect("route_line.jsp");

%>

<%@ include file="dbinclude.jsp" %>
<%

String routeline_id = request.getParameter("routeline_id");
String routeName = request.getParameter("routeline_name");
String startStop = request.getParameter("start_stop");
String endStop = request.getParameter("end_stop");



String sql = "update TrainRoutes set routeName='"+routeName+"',startStop='"+startStop+"',endStop='"+endStop+"' where routeId='"+routeline_id+"'";
       
out.print(sql);
statement.executeUpdate(sql) ;

response.sendRedirect("route_line.jsp");

%>
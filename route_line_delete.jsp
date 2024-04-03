<%@ include file="dbinclude.jsp" %>
<%

String routeline_id = request.getParameter("rid");


String sql = "delete from TrainRoutes where routeId='" + routeline_id + "'";
statement.executeUpdate(sql);

response.sendRedirect("route_line.jsp");

%>

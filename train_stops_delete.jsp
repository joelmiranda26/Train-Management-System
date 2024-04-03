<%@ include file="dbinclude.jsp" %>
<%

String stopId = request.getParameter("tsid");

String sql = "delete from TrainStops where stopId='" + stopId + "'";
statement.executeUpdate(sql);

response.sendRedirect("train_stops.jsp");

%>

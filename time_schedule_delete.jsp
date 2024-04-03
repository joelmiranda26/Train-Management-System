<%@ include file="dbinclude.jsp" %>
<%

String tid = request.getParameter("tid");


String sql = "delete from timeschedule where tsid='" + tid + "'";
statement.executeUpdate(sql);

response.sendRedirect("time_schedule.jsp");

%>

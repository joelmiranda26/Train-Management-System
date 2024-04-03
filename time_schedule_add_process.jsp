<%@ include file="dbinclude.jsp" %> 
<%

String train_id = request.getParameter("train_id");
String arrival = request.getParameter("arrival");
String departure= request.getParameter("departure");
String routeId = request.getParameter("route_id");
String stop_id = request.getParameter("stop_id");


String sql = "insert into timeschedule(tsid,arrival,departure,trainid,routeid,stopid) values (ts_seq.NEXTVAL,'"+arrival+"','"+departure+"','"+train_id+"','"+routeId+"','"+stop_id+"')";
out.print(sql);
statement.executeUpdate(sql);

response.sendRedirect("time_schedule.jsp");

%>

<%@ include file="header.jsp" %>

<%@ include file="dbinclude.jsp" %>

<main id="main" class="main">

    <div class="pagetitle">
      <h1>Manage Route Line</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Data</li>
          <li class="breadcrumb-item active">Train</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
 
<form action="route_line_edit_process.jsp" action=""POST"/>
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Route Line</h5>
             
   
           
<%
String routeline_id = request.getParameter("rid");
String sql = "select * from TrainRoutes where routeId = '"+routeline_id+"'";
    
   
ResultSet resultset = statement.executeQuery(sql) ;
String routeName = "";
String startStop = "";
String endStop = "";


while(resultset.next()){
    routeName = resultset.getString(2);
    startStop = resultset.getString(3);
    endStop = resultset.getString(4);
 
}
   
%>

<table>
              <!-- Table with stripped rows -->
           
              <tr><td><INPUT TYPE="hidden" NAME="routeline_id" value="<%=routeline_id%>" /></td></tr>
               
               <tr><td><lable for ="routeline_name">Route Line Name</lable></td>
               <td><INPUT TYPE="TEXT" NAME="routeline_name" value="<%=routeName%>"/></td></tr>
             
              <tr><td><lable for ="start_stop">Start stop</lable></td>
              <td><INPUT TYPE="TEXT" NAME="start_stop" value="<%=startStop%>"/></td></tr>
             
              <tr><td><lable for ="end_stop">End_stop</lable></td>
              <td><INPUT TYPE="TEXT" NAME="end_stop" value="<%=endStop%>"/></td></tr>
             
        
               
              <tr><td><INPUT TYPE="Submit" value="Submit"/></td></tr>
              <!-- End Table with stripped rows -->
</table>
            </div>
          </div>

        </div>
      </div>
    </section>
</form>
  </main><!-- End #main -->

  <%@ include file="footer.jsp" %>

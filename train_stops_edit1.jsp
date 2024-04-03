<%@ include file="header.jsp" %>

<%@ include file="dbinclude.jsp" %>

<main id="main" class="main">

    <div class="pagetitle">
      <h1>Manage Train Stops</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Data</li>
          <li class="breadcrumb-item active">Train</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
 
<form action="train_stops_edit_process.jsp" action=""POST"/>
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Train Stops</h5>
             
   
           
<%
String stopId = request.getParameter("tsid");
String sql = "select * from TrainStops where stopId = '"+stopId+"'";
    
   
ResultSet resultset = statement.executeQuery(sql) ;
String stopName = "";


while(resultset.next()){
    stopName = resultset.getString(2);
    
 
}
   
%>

<table>
              <!-- Table with stripped rows -->
           
              <tr><td><INPUT TYPE="hidden" NAME="stopId" value="<%=stopId%>" /></td></tr>
            
              <tr><td><lable for ="stopName">Stop Name</lable></td>
              <td><INPUT TYPE="TEXT" NAME="stopName" value="<%=stopName%>"/></td></tr>
             
            
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

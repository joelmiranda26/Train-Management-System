<%@ include file="header.jsp" %>

<%@ include file="dbinclude.jsp" %>

<main id="main" class="main">

    <div class="pagetitle">
      <h1>Manage Train</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Data</li>
          <li class="breadcrumb-item active">Train</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
 
<form action="train_edit_process.jsp" action=""POST"/>
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Train</h5>
             
   
           
<%
String train_id = request.getParameter("tid");
String sql = "select * from train where train_id = '"+train_id+"'";
    
   
ResultSet resultset = statement.executeQuery(sql) ;
String train_name = "";
String line = "";
String status = "";


while(resultset.next()){
    train_name = resultset.getString(2);
    line = resultset.getString(3);
    status = resultset.getString(4);
 
}
   
%>
        <table>     
              <!-- Table with stripped rows -->
           
               <tr><td><INPUT TYPE="hidden" NAME="train_id" value="<%=train_id%>" /></td></tr>
               
               <tr><td><lable for ="train_name">Train Name</lable></td>
               <td><INPUT TYPE="TEXT" NAME="train_name" value="<%=train_name%>"/></td></tr>
             
              <tr><td><lable for ="line">Line</lable></td>
              <td><INPUT TYPE="TEXT" NAME="line" value="<%=line%>"/></td></tr>
             
              <tr><td><lable for ="status">Status</lable></td>
              <td><INPUT TYPE="TEXT" NAME="status" value="<%=status%>"/></td></tr>
             
        
               
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

 <%@ include file="header.jsp" %> 
	<!-- Breadcomb area Start-->
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="breadcomb-list">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="breadcomb-wp">
									<div class="breadcomb-icon">
										<i class="notika-icon notika-windows"></i>
									</div>
									<div class="breadcomb-ctn">
										<h2>Route Line</h2>
										<p>Welcome to City Train Managent System</p>
                                                                        
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
								<div class="breadcomb-report">
                                                                    <button data-toggle="tooltip" data-placement="left" title="Add RouteLine" class="btn"><a href="route_line_add.jsp"><i class="notika-icon notika-sent"></i></a></button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcomb area End-->
    <!-- Data Table area Start-->
    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                      
                        <div class="table-responsive">
                            <table id="data-table-basic" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Route_id</th>
                                        <th>Route_name</th>
                                        <th>Start Stop</th>
                                        <th>End Stop</th>
                                        
                                    </tr>
                                </thead>
                                  <tbody>
                                <%@ include file="dbinclude.jsp" %> 
<%




ResultSet resultset = statement.executeQuery("select * from TrainRoutes") ;
String dbPasswrd = "";
 while(resultset.next()){
    
        out.print("<tr>");
        out.print("<td><a href='route_line_edit.jsp?rid="+resultset.getInt(1)+ "'>" + resultset.getInt(1) + "</a></td>");
        out.print("<td>" + resultset.getString(2) + "</td>");
        out.print("<td>" + resultset.getString(3) + "</td>");
        out.print("<td>" + resultset.getString(4) + "</td>");
        out.print("<td><a href='route_line_delete.jsp?rid="+resultset.getInt(1)+ "'>Delete</a></td>");
        out.print("<tr>");                          
                                    
 
  }
  

%>
                                
                              
                                   
                                    
                                   
                                </tbody>
                                
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Data Table area End-->
     <%@ include file="footer.jsp" %> 

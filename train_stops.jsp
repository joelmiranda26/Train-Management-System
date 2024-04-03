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
										<h2>Train Stops</h2>
										<p>Welcome to City Train Managent System</p>
                                                                        
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
								<div class="breadcomb-report">
                                                                    <button data-toggle="tooltip" data-placement="left" title="Add TrainStops" class="btn"><a href="train_stops_add.jsp"><i class="notika-icon notika-sent"></i></a></button>
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
                                        <th>Stop Id</th>
                                        <th>Stop Name</th>

                                    </tr>
                                </thead>
                                  <tbody>
                                <%@ include file="dbinclude.jsp" %> 
<%




ResultSet resultset = statement.executeQuery("select * from TrainStops") ;
String dbPasswrd = "";
 while(resultset.next()){
    
        out.print("<tr>");
        out.print("<td><a href='train_stops_edit.jsp?tsid="+resultset.getInt(1)+ "'>" + resultset.getInt(1) + "</a></td>");
        out.print("<td>" + resultset.getString(2) + "</td>");
       
       
        out.print("<td><a href='train_stops_delete.jsp?tsid="+resultset.getInt(1)+ "'>Delete</a></td>");
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

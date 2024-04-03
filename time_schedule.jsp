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
										<h2>Train Schedule</h2>
										<p>View your TRAIN ,ROUTE ,STOP ,ARRIVAL ,DEPARTURE.</p>
                                                                        
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
								<div class="breadcomb-report">
                                                                    <button data-toggle="tooltip" data-placement="left" title="Add Train schedule" class="btn"><a href="time_schedule_add.jsp"><i class="notika-icon notika-sent"></i></a></button>
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
                                        <th>TRAIN</th>
                                        <th>ROUTE</th>
                                        <th>STOP</th>
                                        <th>ARRIVAL</th>
                                        <th>DEPARTURE</th>
                                    </tr>
                                </thead>
                                  <tbody>
                                <%@ include file="dbinclude.jsp" %> 
<%



String sql = "select ts.TSID,t.TRAIN_NAME,tr.ROUTENAME,st.STOPNAME,ts.ARRIVAL,ts.DEPARTURE from timeschedule ts,TRAINSTOPS st,TRAINROUTES tr,train t where t.TRAIN_ID=ts.TRAINID AND ts.STOPID=st.STOPID AND ts.ROUTEID=tr.ROUTEID";
ResultSet resultset = statement.executeQuery(sql) ;
String dbPasswrd = "";
 while(resultset.next()){
    
        out.print("<tr>");
        out.print("<td>" + resultset.getString(2) + "</td>");
        out.print("<td>" + resultset.getString(3) + "</td>");
        out.print("<td>" + resultset.getString(4) + "</td>");
        out.print("<td>" + resultset.getString(5) + "</td>");
        out.print("<td>" + resultset.getString(6) + "</td>");
        out.print("<td><a href='time_schedule_delete.jsp?tid="+resultset.getInt(1)+ "'>Delete</a></td>");
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

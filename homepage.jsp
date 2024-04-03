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
										<h2>Train Details</h2>
										<p>Welcome to City Train Managent System</p>
                                                                        
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
								<div class="breadcomb-report">
                                <img src="./images/train1.jpg" style="width: 100px; height: 100px;">
                                <img src="./images/train2.jpg" style="width: 100px; height: 100px;">
                                 <img src="./images/train3.jpg" style="width: 100px; height: 100px;">
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
                                        <th>Train_id</th>
                                        <th>Train_name</th>
                                        <th>Status</th>
                                        
                                    </tr>
                                </thead>
                                  <tbody>
                                <%@ include file="dbinclude.jsp" %> 
<%




ResultSet resultset = statement.executeQuery("select * from train where status='Active'") ;
String dbPasswrd = "";
 while(resultset.next()){
    
        out.print("<tr>");
        out.print("<td>" + resultset.getInt(1) + "</td>");
        out.print("<td>" + resultset.getString(2) + "</td>");
       
        out.print("<td>" + resultset.getString(4) + "</td>");
        
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

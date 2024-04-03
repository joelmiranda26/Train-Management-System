 <%@ include file="header.jsp" %> 
 <%@ include file="dbinclude.jsp" %>
 
 
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
										<h2>Edit Route Line</h2>
										<p>Add new train details using this form</p>
                                                                        
									</div>
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
    <form action="route_line_edit_process.jsp" method="post">
    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                      
                        <div class="table-responsive">
                            <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-element-list mg-t-30">
                                    
                                    
                                    
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>ROUTE LINE ID</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-support"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="999-99-999-9999-9" placeholder="Routeline_id" name="routeline_id" value="<%=routeline_id%>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>Route Line Name</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-mail"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="999.999.999.9999" placeholder="RouteLine_Name" name="routeline_name" value="<%=routeName%>" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>Start stop</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-tax"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="99-9999999" placeholder="Start_stop" name="start_stop" value="<%=startStop%>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>End_stop</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-phone"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="(999) 999-9999" placeholder="End_stop" name="end_stop" value="<%=endStop%>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div>
                                       <button class="btn btn--radius-2 btn--red" type="submit">Submit</button>
                                    </div> 
                                    
                                      </div>
                                      </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <!-- Data Table area End-->
    
 <%@ include file="footer.jsp" %> 
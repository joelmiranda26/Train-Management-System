 <%@ include file="header.jsp" %> 
 <%@ include file="dbinclude.jsp" %>
 
 
<%
String stopId = request.getParameter("tsid");
String sql = "select * from TrainStops where stopId = '"+stopId+"'";
    
   
ResultSet resultset = statement.executeQuery(sql) ;
String stopName = "";


while(resultset.next()){
    stopName = resultset.getString(2);
    
 
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
										<h2>Edit Train Stops</h2>
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
    <form action="train_stops_edit_process.jsp" method="post">
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
                                                <h2>Stop Id</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-support"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="999-99-999-9999-9" placeholder="StopId" name="stopId" value="<%=stopId%>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>Stop Name</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-mail"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="999.999.999.9999" placeholder="StopName" name="stopName" value="<%=stopName%>">
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
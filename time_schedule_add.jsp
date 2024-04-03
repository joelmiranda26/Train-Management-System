 <%@ include file="header.jsp" %> 
 <%@ include file="dbinclude.jsp" %>
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
										<h2>Add Train </h2>
										<p>Add new time schedule details using this form</p>
                                                                        
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
								<div class="breadcomb-report">
                                                                    <button data-toggle="tooltip" data-placement="left" title="Add Train" class="btn"><a href="train_add.jsp"><i class="notika-icon notika-sent"></i></a></button>
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
    <form action="time_schedule_add_process.jsp" method="post">
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
                                                <h2>TRAIN</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-support"></i>
                                                </div>
                                                <div class="nk-int-st bootstrap-select fm-cmp-mg">
                                                    <select name="train_id" class="selectpicker">
                                                    <%
                                                        ResultSet resultset = statement.executeQuery("select * from train where status='Active'") ;

                                                        while(resultset.next()){
                                                               
                                                              
                                                               out.print("<option value='"+resultset.getInt(1)+"'>"+resultset.getString(2)+"</option>");                      


                                                         }
                                                    %>
                                                   
                                                        
                                                        
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>ROUTE</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-mail"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <select name="route_id" class="selectpicker">
                                                         <%
                                                        resultset = statement.executeQuery("select * from TRAINROUTES") ;

                                                        while(resultset.next()){
                                                               
                                                              
                                                               out.print("<option value='"+resultset.getInt(1)+"'>"+resultset.getString(2)+"</option>");                      


                                                         }
                                                    %>
                                                        
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>STOP</h2>
                                                
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-tax"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <select name="stop_id" class="selectpicker">
                                                        <%
                                                        resultset = statement.executeQuery("select * from TRAINSTOPS") ;

                                                        while(resultset.next()){
                                                               
                                                              
                                                               out.print("<option value='"+resultset.getInt(1)+"'>"+resultset.getString(2)+"</option>");                      


                                                         }
                                                    %>
                                                        
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>ARRIVAL</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-phone"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="(999) 999-9999" placeholder="arrival" name="arrival" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>DEPARTURE</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-phone"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="(999) 999-9999" placeholder="departure" name="departure" required>
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
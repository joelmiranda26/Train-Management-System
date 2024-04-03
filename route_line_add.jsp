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
										<h2>Add Route Line </h2>
										<p>Add new Route Line details using this form</p>
                                                                        
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
								<div class="breadcomb-report">
                                                                    <button data-toggle="tooltip" data-placement="left" title="Add Route Line" class="btn"><a href="route_line_add.jsp"><i class="notika-icon notika-sent"></i></a></button>
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
    <form action="route_line_add_process.jsp" method="post">
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
                                                    <input type="text" class="form-control" data-mask="999-99-999-9999-9" placeholder="Routeline_id" name="routeline_id">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>ROUTE LINE NAME</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-mail"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="999.999.999.9999" placeholder="Routeline_name" name="routeline_name" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>START STOP</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-tax"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="99-9999999" placeholder="Start_stop" name="start_stop">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>END STOP</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-phone"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="(999) 999-9999" placeholder="End_stop" name="end_stop">
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
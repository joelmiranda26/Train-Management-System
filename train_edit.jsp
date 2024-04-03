 <%@ include file="header.jsp" %> 
 <%@ include file="dbinclude.jsp" %>
 
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
										<h2>Edit Train </h2>
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
    <form action="train_edit_process.jsp" method="post">
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
                                                <h2>TRAIN ID</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-support"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="999-99-999-9999-9" placeholder="Train Id" name="train_id" value="<%=train_id%>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>TARIN NAME</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-mail"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="999.999.999.9999" placeholder="Train Name" name="train_name" value="<%=train_name%>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>LINE</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-tax"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <input type="text" class="form-control" data-mask="99-9999999" placeholder="Line" name="line" value="<%=line%>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="nk-int-mk">
                                                <h2>STATUS</h2>
                                            </div>
                                            <div class="form-group ic-cmp-int">
                                                <div class="form-ic-cmp">
                                                    <i class="notika-icon notika-phone"></i>
                                                </div>
                                                <div class="nk-int-st">
                                                    <!--<input type="text" class="form-control" data-mask="(999) 999-9999" placeholder="Status" name="status" value="<%=status%>">-->
                                                <select name="status" class="selectpicker">
											<option value="Active">Active</option>
											<option value="Inactive">Inactive</option>
										</select>
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
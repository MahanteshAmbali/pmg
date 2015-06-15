<!-- START Main section-->
<section>
	<!-- START Page content-->
	<section class="main-content">
		<!-- START Secondary Widgets-->
		<div class="row">
			<div class="col-md-6">
				<!-- START widget-->
				<div data-toggle="play-animation" data-play="fadeInLeft"
					data-offset="0" data-delay="1400" class="panel widget">
					<div class="panel-body">
						<div class="text-right text-muted">
							<em class="fa fa-bullseye fa-2x"></em>
						</div>
						<h3 class="mt0 simple-header">My Link's Status</h3>

						<p class="text-muted">
							<b>Links Clicked</b>
						</p>

						<div class="progress progress-striped progress-sm">
							<div id="pb-01" role="progressbar" aria-valuenow="80"
								aria-valuemin="0" aria-valuemax="100"
								class="progress-bar progress-bar-success">
								<span class="sr-only">80% Complete</span>
							</div>
						</div>
						<p></p>
						<p class="text-muted">
							<b>Self Pending Verification</b>
						</p>
						<div class="progress progress-striped progress-sm">
							<div id="pb-02" role="progressbar" aria-valuenow="80"
								aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
								class="progress-bar progress-bar-success">
								<span class="sr-only">80% Complete</span>
							</div>
						</div>
						<p></p>
						<p class="text-muted">
							<b>Self Verified</b>
						</p>
						<div class="progress progress-striped progress-sm">
							<div id="pb-03" role="progressbar" aria-valuenow="80"
								aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
								class="progress-bar progress-bar-info">
								<span class="sr-only">80% Complete</span>
							</div>
						</div>

					</div>
				</div>
				<!-- END widget-->
			</div>
			<div class="col-md-6">
				<!-- START widget-->
				<div data-toggle="play-animation" data-play="fadeInLeft"
					data-offset="0" data-delay="1400" class="panel widget">
					<div class="panel-body">
						<div class="text-right text-muted">
							<em class="fa fa-puzzle-piece fa-2x"></em>
						</div>
						<h3 class="mt0 simple-header">Other's Link Status</h3>

						<p class="text-muted">
							<b>Links Served</b>
						</p>
						<div class="progress progress-striped progress-sm">
							<div id="pb-04" role="progressbar" aria-valuenow="80"
								aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
								class="progress-bar progress-bar-success">
								<span class="sr-only">80% Complete</span>
							</div>
						</div>
						<p></p>
						<p class="text-muted">
							<b>Links Approved</b>
						</p>
						<div class="progress progress-striped progress-sm">
							<div id="pb-05" role="progressbar" aria-valuenow="80"
								aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
								class="progress-bar progress-bar-success">
								<span class="sr-only">80% Complete</span>
							</div>
						</div>
						<p></p>
						<p class="text-muted">
							<b>Disapproved Links</b>
						</p>
						<div class="progress progress-striped progress-sm">
							<div id="pb-06" role="progressbar" aria-valuenow="80"
								aria-valuemin="0" aria-valuemax="100" style="width: 80%;"
								class="progress-bar progress-bar-danger">
								<span class="sr-only">80% Complete</span>
							</div>
						</div>

					</div>
				</div>
				<!-- END widget-->
			</div>
		</div>

		<!-- END Secondary Widgets-->

		<!-- START row-->
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">
					<b>My Links</b> <a href="javascript:void(0);"
						data-perform="panel-dismiss" data-toggle="tooltip" title=""
						class="pull-right" data-original-title="Close Panel"> <em
						class="fa fa-times"></em>
					</a> <a href="javascript:void(0);" data-perform="panel-collapse"
						data-toggle="tooltip" title="" class="pull-right"
						data-original-title="Collapse Panel"> <em class="fa fa-minus"></em>
					</a>
				</div>
				<!-- START table-responsive-->
				<div class="panel-wrapper collapse in" style="">
					<div class="table-responsive">
						<table id="myLinks" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th style="width: 3%">S.No.</th>
									<th style="width: 7%">Username</th>
									<th>URL</th>
									<th style="width: 5%">Creation Time</th>
									<th style="width: 5%">Approval Status</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
					<div class="panel-footer">
						<div class="row">
							<div class="col-lg-2">
								<div class="input-group">
									<label> <select name="datatable3_length"
										aria-controls="datatable3" class="form-control input-sm">
											<option value="10">10</option>
											<option value="25">25</option>
											<option value="50">50</option>
											<option value="100">100</option>
									</select> records per page
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END table-responsive-->

			</div>
		</div>
		<!-- END row-->
		<!-- START row-->
		<div class="row">
			<div data-toggle="portlet" class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading portlet-handler">
						<a href="#" data-perform="panel-dismiss" data-toggle="tooltip"
							title="Close Panel" class="pull-right"> <em
							class="fa fa-times"></em>
						</a> <a href="#" data-perform="panel-collapse" data-toggle="tooltip"
							title="Collapse Panel" class="pull-right"> <em
							class="fa fa-minus"></em>
						</a> <a href="#" data-perform="panel-refresh"
							data-spinner="traditional" data-toggle="tooltip"
							title="Refresh Panel" class="pull-right"> <em
							class="fa fa-refresh"></em>
						</a>
						<div class="panel-title">
							<b>Work Progress</b>
						</div>
					</div>
					<div class="panel-collapse">
						<div class="panel-body">
							<div style="height: 250px;"
								data-source="server/chart-data.php?type=line"
								class="chart-line flot-chart"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END row-->
		<!-- START panel-->
		<div class="panel panel-default">
			<div class="panel-heading">
				<b>Top 10 Contributors</b> <a href="#" data-perform="panel-dismiss"
					data-toggle="tooltip" title="Close Panel" class="pull-right"> <em
					class="fa fa-times"></em>
				</a> <a href="#" data-perform="panel-collapse" data-toggle="tooltip"
					title="Collapse Panel" class="pull-right"> <em
					class="fa fa-minus"></em>
				</a>
			</div>
			<!-- START table-responsive-->
			<div class="table-responsive">
				<table id="topContributors"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th style="width: 5%" class="check-all">
								<div data-toggle="tooltip" data-title="Check All"
									class="checkbox c-checkbox">
									<label> <input type="checkbox"> <span
										class="fa fa-check"></span>
									</label>
								</div>
							</th>
							<th>Contributor's Details</th>
							<th style="width: 25%">Expression Of Appreciation</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
			<!-- END table-responsive-->
			<div class="panel-footer">
				<div class="row">
					<div class="col-lg-12">
						<button type="button"
							class="btn btn-labeled btn-success pull-right">
							<span class="btn-label"><i class="fa fa-check"></i> </span>Send
							My Appreciation
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END panel-->
		<div class="row">
			<div class="col-lg-12">
				<!-- START panel-->
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>Top Link's Juice Status</b> <a href="javascript:void(0);"
							data-perform="panel-dismiss" data-toggle="tooltip" title=""
							class="pull-right" data-original-title="Close Panel"> <em
							class="fa fa-times"></em>
						</a> <a href="javascript:void(0);" data-perform="panel-collapse"
							data-toggle="tooltip" title="" class="pull-right"
							data-original-title="Collapse Panel"> <em class="fa fa-minus"></em>
						</a>
					</div>
					<!-- START table-responsive-->
					<div class="panel-wrapper collapse in" style="">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr class="info">
										<th style="width: 5%">Submission Date</th>
										<th style="width: 25%">Money URLs</th>
										<th style="width: 3%">Total Clicks</th>
										<th style="width: 3%">Days</th>
										<th style="width: 3%">Unique Users</th>
										<th style="width: 10%">LUV</th>
										<th style="width: 5%">Current Status</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>05/05/2014</td>
										<td>http://abc.com/xyz</td>
										<td>500</td>
										<td>30</td>
										<td>50</td>
										<td>
											<div class="progress progress-striped progress-xs">
												<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
													aria-valuemax="100" style="width: 80%;"
													class="progress-bar progress-bar-success">
													<span class="sr-only">80% Complete</span>
												</div>
											</div>
										</td>
										<td class="text-center"><label class="switch"> <input
												type="checkbox" checked=""> <span></span>
										</label></td>
									</tr>
									<tr>
										<td>05/05/2014</td>
										<td>http://abc.com/xyz</td>
										<td>500</td>
										<td>30</td>
										<td>50</td>
										<td>
											<div class="progress progress-striped progress-xs">
												<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
													aria-valuemax="100" style="width: 80%;"
													class="progress-bar progress-bar-success">
													<span class="sr-only">80% Complete</span>
												</div>
											</div>
										</td>
										<td class="text-center"><label class="switch"> <input
												type="checkbox" checked=""> <span></span>
										</label></td>
									</tr>
									<tr>
										<td>05/05/2014</td>
										<td>http://abc.com/xyz</td>
										<td>500</td>
										<td>30</td>
										<td>50</td>
										<td>
											<div class="progress progress-striped progress-xs">
												<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
													aria-valuemax="100" style="width: 80%;"
													class="progress-bar progress-bar-success">
													<span class="sr-only">80% Complete</span>
												</div>
											</div>
										</td>
										<td class="text-center"><label class="switch"> <input
												type="checkbox" checked=""> <span></span>
										</label></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- END table-responsive-->
				</div>
				<!-- END panel-->
			</div>
		</div>
	</section>
	<!-- END Page content-->
</section>
<!-- END Main section-->
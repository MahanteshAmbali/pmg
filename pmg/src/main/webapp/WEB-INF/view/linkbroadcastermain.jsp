
<section>
	<!-- START Page content-->
	<section class="main-content">
		<div data-toggle="portlet" class="col-lg-12">
			<!-- START panel-->
			<div data-toggle="play-animation" data-play="fadeInLeft"
				data-offset="0" data-delay="1400" class="panel panel-purple">
				<div class="panel-heading portlet-handler">
					<h4>Welcome Players</h4>
				</div>
				<div class="panel-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare
						lacus adipiscing, posuere lectus et, fringilla augue.</p>
				</div>
			</div>
			<!-- END panel-->
		</div>
		<div data-toggle="portlet" class="col-lg-6">
			<!-- START panel-->
			<div data-toggle="play-animation" data-play="fadeInRight"
				data-offset="0" data-delay="1400" class="panel panel-pink">
				<div class="panel-heading portlet-handler">
					<b>Safety Tips and Tricks</b>
				</div>
				<div class="panel-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare
						lacus adipiscing, posuere lectus et, fringilla augue.</p>
				</div>
			</div>
			<!-- END panel-->
		</div>
		<div data-toggle="portlet" class="col-lg-6">
			<!-- START panel-->
			<div data-toggle="play-animation" data-play="fadeInLeft"
				data-offset="0" data-delay="1400" class="panel panel-success">
				<div class="panel-heading portlet-handler">
					<b>Rules and Regulations for Link Broadcaster</b>
				</div>
				<div class="panel-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare
						lacus adipiscing, posuere lectus et, fringilla augue.</p>
				</div>
			</div>
			<!-- END panel-->
		</div>
		<div data-toggle="portlet" class="col-lg-12">
			<!-- START panel-->
			<div data-toggle="play-animation" data-play="fadeInLeft"
				data-offset="0" data-delay="1400" class="panel panel-info">
				<div class="panel-heading portlet-handler">
					<b>Link Broadcaster</b>
				</div>
				<div class="panel-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare
						lacus adipiscing, posuere lectus et, fringilla augue.</p>
					<form class="form-horizontal bucket-form" id="linkForm"
						action="${pageContext.request.contextPath}/linkbroadcaster"
						method="post">
						<div class="form-group">
							<div class="col-sm-12">
								<textarea class="form-control" rows="12" form="linkForm"
									placeholder="example.com" id="url" name="url"></textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<input type="button" onclick="sendLink('linkForm')"
									value="Begin
										Broadcasting"
									class="btn btn-labeled btn-success"> <span
									class="btn-label"><i class="fa fa-check"></i> </span>Begin
								Broadcasting
								<!-- Danger button with label -->
							</div>
					</form>

					<p></p>
					<div class="col-md-7">
						<div class="progress progress-striped progress-sm">

							<div role="progressbar" aria-valuenow="80" aria-valuemin="0"
								aria-valuemax="100" style="width: 80%;"
								class="progress-bar progress-bar-sex filler3">

								<span class="sr-only">80% Complete</span>

							</div>
						</div>
						<p class="text-right text-muted">
							<strong>Progress...</strong>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- END panel-->
		</div>



	</section>
	<!-- END Page content-->
</section>

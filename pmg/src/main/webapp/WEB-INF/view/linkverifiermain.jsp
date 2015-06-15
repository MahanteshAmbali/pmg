
<section>
	<!-- START Page content-->
	<section class="main-content">
		<div class="row">
			<div class="col-md-12">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 align-middle">
					<div id="jp_container_1" class="jp-video jp-video-360p">
						<div class="jp-type-single">
							<div id="jquery_jplayer_1" class="jp-jplayer"
								style="width: 100%; height: 260px;">
								<img id="jp_poster_0"
									style="width: 100%; height: 260px; display: none;">
								<object id="jp_flash_0" name="jp_flash_0"
									data="js/jplayer/js/Jplayer.swf"
									type="application/x-shockwave-flash" width="1" height="1"
									tabindex="-1">
									<param name="flashvars"
										value="jQuery=jQuery&amp;id=jquery_jplayer_1&amp;vol=0.8&amp;muted=false">
									<param name="allowscriptaccess" value="always">
									<param name="bgcolor" value="#000000">
									<param name="wmode" value="opaque">
								</object>
							</div>
							<div class="jp-gui">
								<div class="jp-video-play" style="display: none;">
									<a href="javascript:;" class="jp-video-play-icon" tabindex="1">play</a>
								</div>
								<div class="jp-interface">
									<div class="jp-progress">
										<div class="jp-seek-bar" style="width: 3%;">
											<div class="jp-play-bar" style="width: 2%;"></div>
										</div>
									</div>
									<div class="jp-current-time">00:00</div>
									<div class="jp-duration">00:00</div>
									<div class="jp-controls-holder">
										<ul class="jp-controls">
											<li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
											<li><a href="javascript:;" class="jp-pause" tabindex="1"
												style="display: none;">pause</a></li>
											<li><a href="javascript:;" class="jp-stop" tabindex="1">stop</a></li>
											<li><a href="javascript:;" class="jp-mute" tabindex="1"
												title="mute">mute</a></li>
											<li><a href="javascript:;" class="jp-unmute"
												tabindex="1" title="unmute" style="display: none;">unmute</a></li>
											<li><a href="javascript:;" class="jp-volume-max"
												tabindex="1" title="max volume">max volume</a></li>
										</ul>
										<div class="jp-volume-bar">
											<div class="jp-volume-bar-value" style="width: 80%;"></div>
										</div>
										<ul class="jp-toggles">
											<li><a href="javascript:;" class="jp-full-screen"
												tabindex="1" title="full screen">full screen</a></li>
											<li><a href="javascript:;" class="jp-restore-screen"
												tabindex="1" title="restore screen" style="display: none;">restore
													screen</a></li>
											<li><a href="javascript:;" class="jp-repeat"
												tabindex="1" title="repeat">repeat</a></li>
											<li><a href="javascript:;" class="jp-repeat-off"
												tabindex="1" title="repeat off" style="display: none;">repeat
													off</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="jp-no-solution" style="display: none;">
								<span>Update Required</span> To play the media you will need to
								either update your browser to a recent version or update your <a
									href="http://get.adobe.com/flashplayer/" target="_blank">Flash
									plugin</a>.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<h3></h3>
		<!---------------------------->
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">
					<b>Link Verifier Playlist</b> <a href="javascript:void(0);"
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
						<table id="proofverification"
							class="table table-bordered table-hover">
							<thead>
								<tr>
									<th style="width: 3%">S.No.</th>
									<th style="width: 5%">Username</th>
									<th>My URLs</th>
									<th>MY Ad URLs</th>
									<th style="width: 5%">Date of Submision</th>
									<th style="width: 5%">Visit Evidence</th>
									<th style="width: 5%">Download Evidence</th>
									<th style="width: 5%">Rating</th>
									<th style="width: 5%" class="check-all">
										<div data-toggle="tooltip" data-title="Check All"
											class="checkbox c-checkbox" data-original-title="" title="">
											<label> <input type="checkbox"> <span
												class="fa fa-check"></span>
											</label>
										</div>
									</th>
								</tr>
							</thead>
							<form id="proofresult" method="post"
								enctype="multipart/form-data"
								action="${pageContext.request.contextPath}/proofresult">
								<tbody>

								</tbody>
							</form>
						</table>
					</div>
					<div class="panel-footer">
						<div class="row">
							<div class="col-lg-8"></div>
							<div class="col-lg-2"></div>

							<ul class="list-inline app-buttons pull-right">
								<li>
									<button type="button" onclick="sendProofResult('approve')"
										id="approve" class="btn btn-labeled btn-success">
										<span class="btn-label"><i class="fa fa-check"></i> </span><b>I
											APPROVE</b>
									</button>
								</li>
								<li>
									<button type="button" onclick="sendProofResult('disapprove')"
										class="btn btn-labeled btn-danger">
										<span class="btn-label"><i class="fa fa-times"></i> </span><b>I
											DISAPPROVE</b>
									</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- END table-responsive-->

			</div>
		</div>


	</section>
	<!-- END Page content-->
</section>

<!DOCTYPE html>
<!--[if lt IE 7]>  <html class="lt-ie7"> <![endif]-->
<!--[if IE 7]>     <html class="lt-ie8"> <![endif]-->
<!--[if IE 8]>     <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>ProMaGizmo | PMG</title>
  <meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <!--font-->	
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/fonts/Chant/chant.css"  charset="utf-8" />
  
  <!-- nanoScroller -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/nanoScroller/nanoscroller.css" />

  <!--jQuery Vdo and Audio Player-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/jplayer/skin/blue.monday/jplayer.blue.monday.css"/>
  
  <!-- FontAwesome -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/font-awesome/css/font-awesome.min.css" />

  <!-- Material Design Icons -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/material-design-icons/css/material-design-icons.css" />

  <!-- IonIcons -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/ionicons/css/ionicons.min.css" />
  
  <!--Select2-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/select2/css/select2.min.css" />
  
  
	 <!--Drop-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/dropzone/dropzone.min.css" />
  
   <!--Alert-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/alert/alert.css" />

  <!-- Main -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/pmg/css/pmg.css" />
  <!-- endbuild -->

</head>

<body class="aside-toggled">

  <nav class="navbar-top">
  <!-- START navbar header-->
   <div class="navbar-header">
	<a href="#" class="navbar-brand">
	<div class="brand-logo">
		ProMaGizmo
	</div>
	</a>
   </div>
<!-- END navbar header-->
    <div class="nav-wrapper">

      <!-- Sidebar toggle -->
      <a href="#" class="yay-toggle">
        <div class="burg1"></div>
        <div class="burg2"></div>
        <div class="burg3"></div>
      </a>
      <!-- Sidebar toggle -->

      <!-- Menu -->
     <ul>
	  <li class="waves-effect waves-light"><a>Bolt &ensp; 67 <i class="fa fa-star yellow-text"></i></a>
        </li>
	  <li  class="waves-effect waves-light"><a class="tooltipped" data-position="buttom" data-delay="50" data-tooltip="Notification / Messages"><i class="fa fa-bell"></i><sup class="badge red white-text">1</sup></a>
        </li>
        <li class="user">
          <a id="step4" class="dropdown-button" href="#!" data-activates="user-dropdown">
            <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle">John Doe<i class="mdi-navigation-expand-more right"></i>
          </a>
          <ul id="user-dropdown" class="dropdown-content">
            <li  id="step3"><a href="profile.html"><i class="fa fa-user"></i> Profile</a>
            </li>
            <li><a href="notify.html"><i class="fa fa-envelope"></i> Notification <span class="badge new">2</span></a>
            </li>
            <li><a href="account-setup.html"><i class="fa fa-cogs"></i> Settings</a>
            </li>
			<li><a href="lock.html"><i class="mdi mdi-action-lock"></i> Lock Account</a>
            </li>
            <li class="divider"></li>
            <li><a href="${pageContext.request.contextPath}/static/sign-in.html"><i class="mdi-action-settings-power"></i> Logout</a>
            </li>
          </ul>
        </li>
      </ul>
      <!-- /Menu -->
    </div>
  </nav>
  <!-- /Top Navbar -->

  <aside class="yaybar yay-light yay-shrink yay-hide-to-small yay-gestures z-depth-2">
    <div class="top">
      <div>
        <!-- Sidebar toggle -->
        <a href="#" class="yay-toggle">
          <div class="burg1"></div>
          <div class="burg2"></div>
          <div class="burg3"></div>
        </a>
        <!-- Sidebar toggle -->
      </div>
    </div>
    <div class="nano z-depth-2">
      <div class="nano-content">
         <ul>
          <li class="txt-weight blue-text label center">Menu</li>
		  <p></p>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip="Account Set-Up">
            <a href="account-setup.html" class="waves-effect waves-blue"><i class="mdi mdi-action-settings"></i> Account Set-Up</a>
          </li>
          <li class="tooltipped" data-position="right" data-delay="50" data-tooltip="Dashboard">
            <a href="player-dash.html" class="waves-effect waves-blue"><i class="mdi mdi-action-dashboard"></i> Dashboard</a>
          </li>
          <li>
            <a class="yay-sub-toggle waves-effect waves-blue"><i class="mdi mdi-action-wallet-travel"></i> Work Place<span class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
            <ul class="tooltipped" data-position="top" data-delay="50" data-tooltip="  Work Place">
              <li>
                <a href="player-lb.html" class="waves-effect waves-blue"> Link Broadcaster <span class="yellow badge new"></span></a>
              </li>
              <li>
                <a href="player-lr.html" class="waves-effect waves-blue"> Link Receiver</a>
              </li>
			  <li>
                <a href="player-lv.html" class="waves-effect waves-blue"> Link Verifier</a>
              </li>
            </ul>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip="  My Links N Clicks Status">
            <a href="linksnclicks-status.html" class="waves-effect waves-blue"><i class="fa fa-link"></i> Links N Clicks</a>
          </li>
          <li class="tooltipped" data-position="right" data-delay="50" data-tooltip="  Contributor's Details">
            <a href="contributors.html" class="waves-effect waves-blue"><i class="mdi mdi-editor-insert-emoticon"></i> Contributors</a>
          </li>
          <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" Link Uniqueness Value (LUV)">
            <a href="player-luv.html"class="waves-effect waves-blue"><i class="mdi mdi-action-assessment"></i> Link Uniqueness Value</a>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" My Complaints History">
            <a href="player-ch.html" class="waves-effect waves-red"><i class="mdi  mdi-action-history"></i> Complaints History</a>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" Notification History">
            <a href="notify.html" class="waves-effect waves-yellow"><i class="ion-android-notifications"></i> Notification</a>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" Frequently Asked Questions">
            <a href="FAQs.html" class="waves-effect waves-yellow"><i class="fa fa-question-circle"></i> FAQs</a>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" Resources & Sucess Tips">
            <a href="resources&success-tips.html" class="waves-effect waves-yellow"><i class="mdi mdi-action-thumb-up"></i> Resources & Sucess Tips</a>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" ProMaGizmo | PMG ~~ Intro ">
            <a href="pmg-intro.html" class="waves-effect waves-yellow"><i class="ion-monitor"></i> PMG Intro</a>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip="Buy NOW">
            <a href="buy-now.html" class="waves-effect waves-yellow"><i class="mdi mdi-editor-attach-money"></i> Buy Now</a>
          </li>
        </ul>
      </div>
    </div>
  </aside>
  <!-- /Yay Sidebar -->

  <!-- Main Content -->
  <section class="content-wrap">
    <!-- Breadcrumb -->
    <div class="page-title z-depth-1">
	<div id="nt-title-container">
	    				<ul id="nt-title">
		    				<li>
		    					A powerful, flexible and animated vertical news ticker plugin.
		    				</li>
		    				<li>
		    					Provides hight flexibility thanks to numerous callbacks & methods.
		    				</li>
		    				<li>
		    					Fully customizable to every kind of vertical scrolling need.
		    				</li>
		    				<li>
		    					Light-weight and optimized JQuery plugin.
		    				</li>
	    				</ul>
	    			</div>
        <div class="col s12 m3 l2 right-align">
		  <a class="mail-compose-btn btn-floating btn-extra waves-effect waves-light red z-depth-4-hover chat-toggle tooltipped"  data-tooltip="Chat with US" data-position="left">
			<i class="fa fa-comments"></i>
		  </a>
        </div>
    </div>
    <!-- /Breadcrumb -->
	
	<!--video Players-->
	<div class="row">
	<div class="col s12">
	<div id="jppmgtainer_1" class="jp-video jp-video-360p z-depth-2">
	 <div class="jp-type-single">
                        <div id="jquery_jplayer_1" class="jp-jplayer" style="width: 100%; height: 260px;"><img id="jp_poster_0" style="width: 100%; height: 260px; display: none;"><object id="jp_flash_0" name="jp_flash_0" data="js/jplayer/js/Jplayer.swf" type="application/x-shockwave-flash" width="1" height="1" tabindex="-1"><param name="flashvars" value="jQuery=jQuery&amp;id=jquery_jplayer_1&amp;vol=0.8&amp;muted=false"><param name="allowscriptaccess" value="always"><param name="bgcolor" value="#000000"><param name="wmode" value="opaque"></object></div>
                        <div class="jp-gui">
                            <div class="jp-video-play" style="display: none;">
                                <a href="javascript:;" class="jp-video-play-icon" tabindex="1">play</a>
                            </div>
                            <div class="jp-interface">
                                <div class="jp-progress">
                                    <div class="jp-seek-bar" style="width: 0%;">
                                        <div class="jp-play-bar" style="width: 0%;">
                                        </div>
                                    </div>
                                </div>
                                <div class="jp-current-time">00:00</div>
                                <div class="jp-duration">00:00</div>
                                <div class="jp-controls-holder">
                                    <ul class="jp-controls">
                                        <li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
                                        <li><a href="javascript:;" class="jp-pause" tabindex="1" style="display: none;">pause</a></li>
                                        <li><a href="javascript:;" class="jp-stop" tabindex="1">stop</a></li>
                                        <li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
                                        <li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute" style="display: none;">unmute</a></li>
                                        <li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">max volume</a></li>
                                    </ul>
                                    <div class="jp-volume-bar">
                                        <div class="jp-volume-bar-value" style="width: 80%;">
                                        </div>
                                    </div>
                                    <ul class="jp-toggles">
                                        <li><a href="javascript:;" class="jp-full-screen" tabindex="1" title="full screen">full screen</a></li>
                                        <li><a href="javascript:;" class="jp-restore-screen" tabindex="1" title="restore screen" style="display: none;">restore screen</a></li>
                                        <li><a href="javascript:;" class="jp-repeat" tabindex="1" title="repeat">repeat</a></li>
                                        <li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="repeat off" style="display: none;">repeat off</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="jp-no-solution" style="display: none;">
                            <span>Update Required</span>
                            To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                        </div>
                    </div>
                </div>
		 </div>
		 </div>
		 </div>
	
	</div>
	
	<!--/video Players-->
	<h1></h1>
	<!--LV-->
	
	<div class="card  z-depth-2 col s12">
	 <div class="title blue lighten-1 white-text card-header z-depth-1">
      <h5><b>Master Link Verifier</b></h5>
      <a class="minimize" href="#">
      <i class="mdi-navigation-expand-less"></i>
       </a>
      </div>
	
	   <div class="content">
	    <table class="table table-bordered">
        <thead>
    <tr class="blue lighten-1 white-text">
      <th style="width:3% "class="center tooltipped" data-position="top" data-delay="50" data-tooltip="S.No.">#</th>
      <th class="center tooltipped" data-position="top" data-delay="50" data-tooltip="Contibutor's ID">Contributor's ID</th>
	  <th class="center tooltipped" data-position="top" data-delay="50" data-tooltip="URLs ID">LID</th>
      <th class="center tooltipped" data-position="top" data-delay="50" data-tooltip="My URLs">My URLs</th>
      <th class="center tooltipped" data-position="top" data-delay="50" data-tooltip="My Ad URLs">My Ad URLs</th>
	  <th class="center tooltipped" data-position="top" data-delay="50" data-tooltip="Submitted On" style="width:12%">Submision Date</th>
	  <th class="center tooltipped" data-position="top" data-delay="50" data-tooltip="View Evidence">View Evidence</th>
	  <th style="width: 5%" class="center tooltipped" data-position="top" data-delay="50" data-tooltip="Select to Approve or Disapprove">Check</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>1</th>
      <td>scarlette</td>
	  <td>#652315</td>
      <td>abc.com/xzy.html</td>
      <td>ad.abc.com/xzy.html</td>
	   <td class="center">04/Apr/2015</td>
	   <td class=" center" style="width: 10%"><a href="#" class="icon mdi-av-play-circle-outline fsize"></a></td>
	   <td class="center">
        <input type="checkbox" id="checkbox1" />
        <label for="checkbox1"></label>
       </td>
    </tr>
  </tbody>
</table>



	
<!-- Modal Trigger -->
<a class="waves-effect waves-light btn modal-trigger tooltipped" data-position="right" data-delay="50" data-tooltip="Lodge Complaint" href="#Complaint">I Disapprove<i class="fa fa-thumbs-down right"></i></a>
 
 
 
 
<!-- Modal Structure -->
<div id="Complaint" class="card modal-f blue white-text">
  <h3 class="center">Lodge Complaint</h3>
  <hr class="white">
  <p>Contributor's ID</p>
  <div class="input-field">
  <i class="ion-android-hand prefix"></i>
  <input id="input_text_icon" type="text"   style="border-bottom: 1px solid #FAF8F8;"class="validate" disabled>
  <label for="input_text_icon"><span class="white-text">Kaspers</span></label>
</div>

<p>Affected URL</p>
  <div class="input-field">
  <i class="fa fa-sitemap prefix"></i>
  <input id="input_text_icon" type="text" style="border-bottom: 1px solid #FAF8F8;" class="validate" disabled>
  <label for="input_text_icon"><span class="white-text">abc.com/xzy.html</span></label>
</div>

<p>Date</p>
<div class="input-field">
  <i  class="fa fa-calendar prefix"></i>
  <input id="input_text_icon" type="text" style="border-bottom: 1px solid #FAF8F8;" class="validate" disabled>
  <label for="input_text_icon"><span class="white-text">04/Apr/2015</span></label>
</div>

<div class="row" >
            <div class="col s12 l3">
			
			<div class="white-text input-field"><i class="fa fa-upload prefix"></i>
               <label class="white-text"> Upload Evidence</label>
              </div>
			  
            </div>
            <form></form>
        <div class="col s12 l9 blue-text">
          <form action="dropzone.php" class="dropzone" id="my-dropzone"></form>
        </div>
		</div>

<div class="row white-text">
            <div class="col s12 l3">
              <div class="white-text input-field"><i class="ion-sad prefix"></i>
               <label class="white-text"> Complaint</label>
              </div>
            </div>
            <div class="col s12 l9">

              <textarea id="ckeditor1" name="product-description">
                <u>Small Description</u>
                <p><i>The Good</i>
                  <br>The iPhone 6 delivers a spacious, crisp 4.7-inch screen, improved wireless speeds, better camera autofocus, and bumped-up storage capacities to 128GB at the top end. iOS remains a top-notch mobile operating system with an excellent app
                  selection, and Apple Pay is a smooth, secure payment system.
                </p>
                <p><i>The Bad</i>
                  <br>Battery life isn't much better than last year's iPhone 5S. An even larger screen could have been squeezed into the same housing.
                </p>
                <p><i>The Bottom Line</i>
                  <br>The iPhone 6 is an exceptional phone in nearly every way except its average battery life: it's thin and fast with a spacious screen and the smoothest payment system we've seen. It's the best overall phone of 2014.
                </p>
              </textarea>

            </div>
          </div>


  			<div class="row">
	<div class="col s12 l12"> 
	 <ul class="note">
			<li class="warning confirm right">
			  <button class="btn waves-effect waves-blue white blue-text modal-close tooltipped" data-position="left" data-delay="50" data-tooltip="Delete Selected FAQ" type="submit" name="action">
        Lodge Complaint <i class="fa fa-bomb right"></i>
      </button>
			</li>
		  </ul>
	</div>
    </div>
</div>

 
 <a class="waves-effect waves-light btn right modal-trigger tooltipped" data-position="left" data-delay="50" data-tooltip="Express Your Appriciation" href="#EoA">I Approve<i class="fa fa-thumbs-up right"></i></a>
 
<!-- Modal Structure -->
<div id="EoA" class="modal blue white-text">
  <h3 class="center">Express Your Appriciation</h3>
  <hr class="white-text">
  <ul  class="center">
    <!-- Ratings with Stars -->
<div class="rating yellow-text">
  <input type="radio" id="rating-star-5" name="rating-star" value="5">
  <label for="rating-star-5"><i class="ion-star"></i></label>
  <input type="radio" id="rating-star-4" name="rating-star" value="4">
  <label for="rating-star-4"><i class="ion-star"></i></label>
  <input type="radio" id="rating-star-3" name="rating-star" value="3" checked>
  <label for="rating-star-3"><i class="ion-star"></i></label>
  <input type="radio" id="rating-star-2" name="rating-star" value="2">
  <label for="rating-star-2"><i class="ion-star"></i></label>
  <input type="radio" id="rating-star-1" name="rating-star" value="1">
  <label for="rating-star-1"><i class="ion-star"></i></label>
</div>
<!-- /Ratings with Stars -->
  </ul>
  <div class="row">
	<div class="col s12 l12"> 
	 <ul class="note">
			<li class="warning confirm right">
			  <button class="btn waves-effect waves-blue ya white blue-text modal-close tooltipped" data-position="top" data-delay="50" data-tooltip="Delete Selected FAQ" type="submit" name="action">
        I Appriciate <i class="fa fa-star right"></i>
      </button>
			</li>
		  </ul>
	</div>
    </div>
</div>
 
<!--button-->


<!--/button-->



	</div>
	</div>
	
	<!--/LV-->
  </section>
  <!-- /Main Content -->

  <!-- Chat.chat-light - light color scheme-->
  <div class="chat">
    <div class="layer-overlay"></div>
    <div class="layer-content">
      <!-- Contacts -->
      <div class="contacts">
        <!-- Top Bar -->
        <div class="topbar">
          <a href="#!" class="text">Chat</a>
          <a href="#!" class="chat-toggle"><i class="mdi-navigation-close"></i></a>
        </div>
        <!-- /Top Bar -->
        <div class="nano">
          <div class="nano-content">
		   <div class="input-field white-text">
        <i class="mdi-social-public prefix white-text"></i>
        <input class="white-text"id="Search" type="text">
        <label class="white-text"for="Search">Search Players</label>
      </div>
            <span class="label">Online</span>
            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="Felecia Castro" class="circle photo">
              <div class="name">Felecia Castro</div>
              <div class="status">Lorem status</div>
              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>
            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user3.jpg" alt="Max Brooks" class="circle photo">
              <div class="name">Max Brooks</div>
              <div class="status">Lorem status</div>
              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>
            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user4.jpg" alt="Patsy Griffin" class="circle photo">

              <div class="name">Patsy Griffin</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user5.jpg" alt="Chloe Morgan" class="circle photo">

              <div class="name">Chloe Morgan</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user6.jpg" alt="Vernon Garrett" class="circle photo">

              <div class="name">Vernon Garrett</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="onongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user7.jpg" alt="Greg Mcdonalid" class="circle photo">

              <div class="name">Greg Mcdonalid</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="onongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user8.jpg" alt="Christian Jackson" class="circle photo">

              <div class="name">Christian Jackson</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="onongreen-text fa fa-circle"></i>
              </div>
            </div>


            <span class="label">Offline</span>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user9.jpg" alt="Willie Kelly" class="circle photo">

              <div class="name">Willie Kelly</div>
              <div class="status">Lorem status</div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user10.jpg" alt="Jenny Phillips" class="circle photo">

              <div class="name">Jenny Phillips</div>
              <div class="status">Lorem status</div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user11.jpg" alt="Darren Cunningham" class="circle photo">

              <div class="name">Darren Cunningham</div>
              <div class="status">Lorem status</div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user12.jpg" alt="Sandra Cole" class="circle photo">

              <div class="name">Sandra Cole</div>
              <div class="status">Lorem status</div>
            </div>

          </div>
        </div>
      </div>
      <!-- /Contacts -->

      <!-- Messages -->
      <div class="messages">

        <!-- Top Bar with back link -->
        <div class="topbar">
          <a href="#!" class="chat-toggle"><i class="mdi-navigation-close"></i></a>
          <a href="#!" class="chat-back"><i class="mdi-hardware-keyboard-arrow-left"></i> Back</a>
        </div>
        <!-- /Top Bar with back link -->

        <!-- All messages list -->
        <div class="list">
          <div class="nano scroll-bottom">
            <div class="nano-content">

              <div class="date">Monday, Feb 23, 8:23 pm</div>

              <div class="from-me">
                Hi, Felicia.
                <br>How are you?
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">Hi! I am good!
              </div>

              <div class="clear"></div>

              <div class="from-me">
                Glad to see you :)
                <br>This long text is intended to show how the chat will display it.
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">Also, we will send the longest word to show how it will fit in the chat window: <strong>Pneumonoultramicroscopicsilicovolcanoconiosis</strong>
              </div>

              <div class="date">Friday, Mar 10, 5:07 pm</div>

              <div class="from-me">
                Hi again!
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">Hi! Glad to see you.
              </div>

              <div class="clear"></div>

              <div class="from-me">
                I want to add you in my Facebook.
              </div>

              <div class="clear"></div>

              <div class="from-me">
                Can you give me your page?
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">I do not use Facebook. But you can follow me in Twitter.
              </div>

              <div class="clear"></div>

              <div class="from-me">
                It's good idea!
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">You can find me here - <a href="https://twitter.com/nkdevv">https://twitter.com/nkdevv</a>
              </div>

            </div>
          </div>
        </div>
        <!-- /All messages list -->

        <!-- Send message -->
        <div class="send">
          <form action="#!">
            <div class="input-field">
              <input id="chat-message" type="text" name="chat-message">
            </div>

            <button class="btn waves-effect z-depth-2"><i class="mdi-content-send"></i>
            </button>
          </form>
        </div>
        <!-- /Send message -->

      </div>
      <!-- /Messages -->
    </div>

  </div>
  <!-- /Chat -->



  <footer class="z-depth-3">&copy; 2015 <strong>ProMaGizmo | PMG</strong>. All rights reserved.</footer>
  <!-- DEMO [REMOVE IT ON PRODUCTION] -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/pmg/js/_demo.js"></script>

  <!-- build:js ../../assets/core/js/script.js -->
  <!-- jQuery -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jquery/jquery.min.js"></script>

  <!-- jQuery RAF (improved animation performance) -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jqueryRAF/jquery.requestAnimationFrame.min.js"></script>

  <!-- nanoScroller -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/nanoScroller/jquery.nanoscroller.min.js"></script>

  <!-- Materialize -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/materialize/js/materialize.min.js"></script>

  <!-- Simple Weather -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/simpleWeather/jquery.simpleWeather.min.js"></script>

  <!-- Sparkline -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/sparkline/jquery.sparkline.min.js"></script>

  <!-- Flot -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.time.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.pie.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.tooltip.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.categories.min.js"></script>

  <!-- d3 -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/d3/d3.min.js"></script>

  <!-- nvd3 -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/nvd3/nv.d3.min.js"></script>

  <!-- Rickshaw -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/rickshaw/rickshaw.min.js"></script>
  
  
   <!--News-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

  <!-- Google Prettify -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/google-code-prettify/prettify.js"></script>

  <!-- Sortable -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/sortable/Sortable.min.js"></script>

  <!-- Main -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>
  
  <!--Rating-->
  <script src="${pageContext.request.contextPath}/static/assets/core/bootstrap-rating/bootstrap-rating-input.min.js"></script>
  <!-- endbuild -->

  <!--Alert-->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>
  
   <!--On top-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>

   <!--Select2-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/select2/js/select2.full.min.js"></script>
   
   
      <!--Drop-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/dropzone/dropzone.min.js"></script>
   
  <!-- jQuery audio VDO player  -->

   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jplayer/js/jquery.jplayer.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jplayer/jplayer.init.js"></script>

  <!-- MarkItUp -->
  <script src="${pageContext.request.contextPath}/static/assets/core/markitup/sets/default/set.js" type="text/javascript"></script>
  <link href="${pageContext.request.contextPath}/static/assets/core/markitup/skins/pmg/style.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/static/assets/core/markitup/sets/default/style.css" rel="stylesheet" type="text/css" />
    <!-- Init CKEditor -->
  <script src="${pageContext.request.contextPath}/static/assets/core/ckeditor/ckeditor.js"></script>
  <script>
    CKEDITOR.inline( 'ckeditor1' );
  </script>
  <!-- /Init CKEditor -->
   <script>

            // elevator.
            var elementButton = document.querySelector('footer');
            var elevator = new Elevator({
                element: elementButton,
                mainAudio: '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
                endAudio:  '../.././music/ding.mp3'
            });

			
			// Complaint
document.querySelector('ul.note li.warning.confirm button').onclick = function(){
	swal({
		title: "Are you sure?",
		text: "False Complaint Will Go Against You!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("Disapproved!", "Your Complaint has been successfully Lodged!", "success");
	});
};

		// Appriciate
document.querySelector('ul.note li.warning.confirm button.ya').onclick = function(){
	swal({
		title: "Are you sure?",
		text: "Cancel If Not Sure!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, M Sure!',
		closeOnConfirm: false
	},
	function(){
		swal("Appreciated!", "Your Appriciation has been successfully Expressed!", "success");
	});
};
        </script>
		 <script>
    		
    		$(window).load(function(){
	            $('code.language-javascript').mCustomScrollbar();
	        });
            var nt_title = $('#nt-title').newsTicker({
                row_height: 40,
                max_rows: 1,
                duration: 3000,
                pauseOnHover: 1
            });
        </script>
</body>

</html>
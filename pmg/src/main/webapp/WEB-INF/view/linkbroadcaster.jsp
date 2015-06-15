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
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/fonts/Chant/chant.css"/>
  
    <!--Alert-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/alert/alert.css" />

  <!-- nanoScroller -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/nanoScroller/nanoscroller.css" />

  <!-- FontAwesome -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/font-awesome/css/font-awesome.min.css" />

  <!-- Material Design Icons -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/material-design-icons/css/material-design-icons.min.css" />

  <!-- IonIcons -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/ionicons/css/ionicons.min.css" />

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
	<div class="card z-depth-2 col s12">
	 <div class="title blue white-text z-depth-1">
      <h5><b> Master Link Submitter</b></h5>
      <a class="minimize" href="#">
      <i class="mdi-navigation-expand-less"></i>
      </a>
     </div>
	
	<div class="content">
	<p><font color="black">Hi Player!! Welcome to PMG's Link Broadcaster. This is where all the action takes place. Submit your links, as many as you may like. Just keep PMG's RoE in mind.</font> </p>
	
	<div class="row">
	<div class="col s6 ">
	<select>
     <option value="" disabled selected>Choose Money Site</option>
     <option class="blue-text" value="1">domain1</option>
     <option value="2">domain2</option>
     <option value="3">domain3</option>
    </select>
    </div>
    </div>
    <div class="input-field">
     <i class="mdi-communication-chat prefix"></i>
      <textarea id="textarea_icon" class="materialize-textarea"></textarea>
       <label for="textarea_icon">Submit Your Ad Containing Links To Broadcast</label>
    </div>
	<div class="row">
	<div class="col s12 l12"> 
	 <ul class="note">
			<li class="success right">
			  <button class="btn waves-effect a1 waves-light tooltipped" data-position="left" data-delay="50" data-tooltip="Submit All The Links From the Selected Domain" type="submit" name="action">
        Submit <i class="mdi-content-send right"></i>
      </button>
			</li>
		  </ul>
	</div>
    </div>
	</div>
	</div>
	
	<!--LB-->
	<div class="card z-depth-2 col l12 m8 s6">
	 <div class="title blue white-text z-depth-1">
      <h5><b>Master Link Broadcastor</b></h5>
      <a class="minimize" href="#">
      <i class="mdi-navigation-expand-less"></i>
    </a>
  </div>
	
	<div class="content col l12 m8 s6">
	<table class="table table-responsive table-bordered l12 m8 s6">
  <thead class="blue white-text">
    <tr>
      <th style="width:3% "class="center tooltipped" data-position="top" data-delay="50" data-tooltip="S.No.">#</th>
      <th style="width: 10%" class="center tooltipped" data-position="top" data-delay="50" data-tooltip="Link Indentification No.">LID</th>
      <th class="center tooltipped" data-position="top" data-delay="50" data-tooltip="Your Selcted Link ">My URLs</th>
      <th class="center tooltipped" data-position="top" data-delay="50" data-tooltip="Keyword/key phrase for Organic Search in Google">Best Keyword</th>
	  <th class="center tooltipped" data-position="top" data-delay="50" data-tooltip="Link Submitted On" style="width:12%">Submision Date</th>
	  <th style="width: 5%" class="center tooltipped" data-position="top" data-delay="50" data-tooltip="Select the Links to Broadcast">Check</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th class="center">1</th>
      <td class="center">#425894</td>
      <td>abc.com/xzy.html</td>
      <td><div class="input-field">
       <input id="input_text" type="text" class="validate">
       <label for="input_text">Relevant Keyword</label>
        </div>
       </td>
	   <td class="center">04/Apr/2015</td>
	   <td class="center">
        <input class="check check-blue" type="checkbox" id="checkbox1" />
        <label class="check check-blue"for="checkbox1"></label>
       </td>
    </tr>
  </tbody>
</table>

<div class="row">
	<div class="col s6 l6"> 
<!-- Dropdown Trigger -->
<div class="div btn-group tooltipped" data-position="right" data-delay="50" data-tooltip="Edit / Delete the Selected Link Before Broadcasting">
  <a href="#!" class="waves-effect waves-light btn ">Save</a>
  <a href="#!" class="waves-effect waves-light btn dropdown-button" data-activates='dropdown2'><span class="mdi-navigation-expand-more"></span></a>
</div>
 
<!-- Dropdown Structure -->
<ul id='dropdown2' class="dropdown-content">
  <li><a href="#!" class="waves-effect waves-blue">Edit</a></li>
  <li class="divider"></li>
  <li><a href="#!" class="waves-effect waves-red">Delete</a></li>
</ul>
</div>


	<div class="col s6 l6"> 
	 <ul class="note">
			<li class="warning confirm right">
			  <button class="btn waves-effect lb waves-light tooltipped" data-position="left" data-delay="50" data-tooltip="Broadcast My Selected Link to Other Players" type="submit" name="action">
       Begin Broadcasting <i class="fa fa-bullhorn right"></i>
      </button>
			</li>
		  </ul>
	</div>
    </div>
<div class="progress orange lighten-4">
  <div class="active striped orange" style="width: 10%">
    10%
  </div>
</div>
	</div>
	</div>
	<!--/LB-->
	
        

	
  </section>
  <!-- /Main Content -->

  
  <!-- Chat.chat-light - light color scheme-->
  <div class="chat z-depth-4-hover">
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
            <span class="label">Share - Suggest</span>
            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="Felecia Castro" class="circle photo">
              <div class="name">The CREATOR</div>
              <div class="status">Chat with Me!</div>
              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
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


   <footer class="z-depth-3"><i class="fa fa-copyright"></i> 2015 <strong>ProMaGizmo | PMG</strong>. All rights reserved.</footer>
  
  <!-- jQuery -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jquery/jquery.min.js"></script>

  <!-- jQuery RAF (improved animation performance) -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jqueryRAF/jquery.requestAnimationFrame.min.js"></script>

  <!-- nanoScroller -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/nanoScroller/jquery.nanoscroller.min.js"></script>
  
  
   <!--News-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

  <!-- Materialize -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/materialize/js/materialize.min.js"></script>
  
  <!--Alert-->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>
  
   <!--On top-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>

  <!-- Main -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>
  <!-- endbuild -->
	 
  <script>
            // elevator.
            var elementButton = document.querySelector('footer');
            var elevator = new Elevator({
                element: elementButton,
                mainAudio: '${pageContext.request.contextPath}/static/./music/elevator-music.mp3', // Music from http://www.bensound.com/
                endAudio:  '${pageContext.request.contextPath}/static/./music/ding.mp3'
            });

			// Link Submitter
			document.querySelector('ul.note li.success button.a1').onclick = function(){
		swal({ 
		title:  "Well Done Username",
		text: "Links are Submitted Successfully !!!",
		timer: 3000,
		type: "success",
		showConfirmButton: false
		
	});
};

// Link Broadcastor
document.querySelector('ul.note li.warning.confirm button.lb').onclick = function(){
	swal({
		title: "Are you sure Username?",
		text: "Cancel & Recheck If Not Sure!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("Sarting...!", "Link Broadcasting Begins NOW!", "success");
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
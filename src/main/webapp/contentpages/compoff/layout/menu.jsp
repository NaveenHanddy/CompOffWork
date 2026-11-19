<%-- Comp Off pages: the top of <body>. Included by every Comp Off page right after <body>. --%>
<%-- Page data for compoff.js (context path, today, text limit, the one-time message) --%>
<div id="co-data" hidden data-ctx="${pageContext.request.contextPath}" data-today="<s:property value='today'/>"
     data-maxlength="<s:property value='textMaxLength'/>" data-flash="<s:property value='flashMessage'/>"
     data-flash-type="<s:property value='flashType'/>"></div>
<%-- Your Leave page (the page that shows the Comp Off cards, layout/leaveLinks.jsp): action name without ".action" --%>
<s:set var="leavePage" value="'leave1'"/>
 <%-- <a class="logout" href="<s:url action='sessionexpire' namespace='/'/>">Log out</a>
 --%>
<%-- ===== YOUR APPLICATION'S TOP MENU: replace from here ... ===== --%>
<!-- <div class="co-topbar"><div class="co-in"> -->
<!--   <span class="co-logo"><img src="newStyle/images/logo.png" alt="logo" /></span> -->
<!--   <div class="who"> -->
<!--     <span class="who-name"><s:property value="currentStaff.staffName"/></span> -->
<!--     <span class="who-meta"><s:property value="currentStaff.employeeCode"/> &middot; <s:property value="currentUserTypeName"/></span> -->
<%--     <a class="logout" href="<s:url action='sessionexpire' namespace='/'/>">Log out</a> --%>
<!--   </div> -->
<!-- </div></div> -->
<!-- <div class="co-menubar"><div class="co-in"> -->
<%--   <a class="backapp" href="<s:url action='dashboard' namespace='/'/>">Home</a> --%>
<%--   <a class="on" href="<s:url action='%{#leavePage}' namespace='/'/>">Leave</a> --%>
<!-- </div></div> -->


<div id="header">
		<div class="headerSec">
			<div class="logo">
				<img src="newStyle/images/logo.png" alt="logo" />
			</div>
			<div class="user_center">

				<span id="notificationAgentImg"><a
					href="staffMyMessages.action"><span id="unread"
						style="cursor: pointer;"></span></a></span>

			</div>
			<div class="user_right">
				<span><s:property value="currentStaff.staffName"/> &middot; <a class="logout" href="<s:url action='sessionexpire' namespace='/'/>">Log out</a><a href="#supernote-note-demoinline"
					class="supernote-click-demoinline"></a></span>
			</div>
			<div class="clear"></div>

			<div id="supernote-note-demoinline">
				<div class="settings_arrow"></div>
				<ul>
					<li class="select"><div class="edit_profile select">
							<p>
								<a href="profileSettings.action"
									style="text-decoration: underline;"><s:property value="currentStaff.staffName"/></a>
							</p>
						</div></li>

					<li><div class="edit_profile">
							<p class="help">
								<a href="<s:url action='sessionexpire' namespace='/'/>">Signout</a>
							</p>
						</div></li>
					<!--                             <li><div class="edit_profile"><p class="help"><a href="staffHome.action">Dashboard</a></p></div></li> -->
				</ul>
			</div>
		</div>
	</div>
<%-- ===== ... to here ===== --%>

<s:if test="#navKey != 'leave'"><div class="co-crumb"><a href="<s:url action='%{#leavePage}' namespace='/'/>" id="co-back">&larr; Leave</a></div></s:if>

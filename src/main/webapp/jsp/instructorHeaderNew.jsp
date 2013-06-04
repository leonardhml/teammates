<%@ page import="teammates.common.Common"%>
<%@ page import="teammates.ui.controller.Helper"%>
<%@ page import="teammates.ui.controller.PageData"%>
<% PageData data = (PageData)request.getAttribute("data"); %>
		<div id="frameTopWrapper">
			<div id="logo">
				<a href="/index.html">
				<img alt="Teammates" height="47px"
					src="/images/teammateslogo.jpg"
					width="150px">
				</a>
			</div>			
			<div id="contentLinks">
				<ul id="navbar">
					<li ><a class='nav home' data-link="instructorHome" href="<%= data.getInstructorHomeLink() %>">Home</a></li>
					<li><a class='nav courses' data-link="instructorCourse" href="<%= data.getInstructorCourseLink() %>">Courses</a></li>
					<li><a class='nav evaluations' data-link="instructorEval" href="<%= data.getInstructorEvaluationLink() %>">Evaluations</a></li>
					<li><a class='nav help' href="/instructorHelp.html" target="_blank">Help</a></li>
					<li><a class='nav logout' href="<%= Common.JSP_LOGOUT %>">Logout</a>
					<b><%if(data.account.googleId.length()>=Common.USER_ID_MAX_DISPLAY_LENGTH){ %>
					<span onmouseover="ddrivetip('<%=data.account.googleId %>')" onmouseout="hideddrivetip()">
							(<%=Helper.truncate(data.account.googleId,Common.USER_ID_MAX_DISPLAY_LENGTH)%>)</span><%}else{%>
							(<%=Helper.truncate(data.account.googleId,Common.USER_ID_MAX_DISPLAY_LENGTH)%>)<%} %></b>
					</li>
				</ul>
			</div>
			<div style="clear: both;"></div>
		</div>

<div class="sidebar" data-color="black" data-active-color="danger">
	<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
	<div class="logo" style="text-align: center">
		<a href="/dashboard" class="simple-text logo-normal"> Blood Life </a>
	</div>
	<div class="sidebar-wrapper">
		<ul class="nav">
			<li id="dashboard"><a href="dashboard"> <i
					class="fas fa-clipboard-list"></i>
					<p>Dashboard</p>
			</a></li>
			<% 
				//if the user is a donor then don't display all the options to the user.
				if(session.getAttribute("role")!=null){
				String role=session.getAttribute("role").toString();
		 	   if(!role.equals("donor")){
			%>
			<li id="donorJsp"><a href="/donor"> <i
					class="fas fa-procedures"></i>
					<p>Donor</p>
			</a></li>
			<li id="receiverJsp"><a href="/receiver"> <i
					class="fas fa-user-injured"></i>
					<p>Receiver</p>
			</a></li>
			<li id="reportJsp"><a href="report"> <i
					class="fas fa-chart-bar"></i>
					<p>Report</p>
			</a></li>
			<li id="eventsJsp"><a href="/eventsManagement"> <i
					class="fas fa-star-of-david"></i>
					<p>events</p>
			</a></li>
			<li id="galleryJsp"><a href="/galleryManagement"> <i
					class="fas fa-images"></i>
					<p>Gallery</p>
			</a></li>
			<%} 
			}
			%>
		</ul>
	</div>
</div>
<nav
	class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
		<i class="fa fa-bars"></i>
	</button>
	<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
		<div class="input-group">
			<input type="text" class="form-control bg-light border-0 small"	placeholder="Search for..." aria-label="Search"
				aria-describedby="basic-addon2">
			<div class="input-group-append">
				<button class="btn btn-primary" type="button">
					<i class="fas fa-search fa-sm"></i>
				</button>
			</div>
		</div>
	</form>
	

		<!-- last code -->
				
	
	
	<li class="nav-item dropdown show">
      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
       <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>User Profile
      </a>
      <div class="dropdown-menu dropdown-menu-right show" aria-labelledby="bd-versions">
     	 <c:url value="/changelocale/fr" var="frUrl"/>
		<c:url value="/changelocale/en" var="enUrl"/>
        <a class="dropdown-item" href="${frUrl}"><i class="fa fa-gear fa-fw"></i><fmt:message code="locale.fr"/></a>
        <a class="dropdown-item active" href="${enUrl}"><i class="fa fa-gear fa-fw"></i></i><fmt:message code="locale.en"/></a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#"><i class="fa fa-gear fa-fw"></i></i>Logout</a>
       
      </div>
    </li>
		
</nav>
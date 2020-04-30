<ul	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="javascript:void(0);"> <!-- javascript:void(0); click ne rien faire -->
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">
			Gestion du Stock <sup>*****</sup>
		</div>
	</a>
	<hr class="sidebar-divider my-0">
	<c:url value="/home/" var="home" /><!-- url quont on vas visiter selon controleur -->
	<li class="nav-item"><a class="nav-link" href="${home}"> <i class="fas fa-fw fa-tachometer-alt"></i> <span> 
				<fmt:message key="common.dashbord" /> <!-- i18n -->
		</span></a></li>
	<!-- Article -->
	<c:url value="/article/" var="article" />
	<li class="nav-item"><a class="nav-link" href="${article}"> <i class="fas fa-fw fa-chart-area"></i> <span> 
				<fmt:message key="common.article" />
		</span></a></li>
<!-- Client -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"	data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
		aria-controls="collapseTwo"> <i class="fas fa-fw fa-cog"></i> 
		<span><fmt:message key="common.client" /></span></a>
		<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<c:url value="/client/" var="client" />
				<a class="collapse-item" href="${client}"><fmt:message key="common.client" /></a>
					<c:url value="/commandeClient/" var="cdeClient" />
				<a class="collapse-item" href="${cdeClient}"><fmt:message key="common.client.commande" /></a>
			</div>
		</div></li>
<!-- Fournisseur -->
	<li class="nav-item active">
	<a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
		 <i	class="fas fa-fw fa-folder"></i> <span><fmt:message	key="common.fournisseur" /></span>
	</a>
		<div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<c:url value="/fournisseur/" var="fournisseur" />
				<a class="collapse-item" href="${fournisseur }"><fmt:message key="common.fournisseur" /></a>
				<c:url value="/commandeFournisseur/" var="cdeFournisseur" />
				<a class="collapse-item" href="${cdeFournisseur }"><fmt:message key="common.fournisseur.commande" /></a>
			</div>
		</div></li>
<!-- Stock -->
	<c:url value="/stock/" var="stock" />
	<li class="nav-item"><a class="nav-link" href="${stock }"> <i class="fa fa-stack-overflow" aria-hidden="true"></i></i> <span> 
				<fmt:message key="common.stock" />
		</span></a></li>
<!-- Vente -->
<c:url value="/vente/" var="vente" />
	<li class="nav-item"><a class="nav-link" href="${vente }">  <i class="fas fa-fw fa-table"></i> <span> 
				<fmt:message key="common.vente" />
		</span></a></li>
<!-- Utilisateur / Categorie -->
	<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
		aria-controls="collapseTwo"> <i class="fa fa-user-circle" aria-hidden="true"></i>
		<span><fmt:message key="common.parametrage" /></span>
	</a>
		<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"	data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<c:url value="/utilisateur/" var="user" />
				<a class="collapse-item" href="${user }"><fmt:message key="common.parametrage.utilisateur" /></a>
				<c:url value="/categorie/" var="categorie" />
				<a class="collapse-item" href="${categorie }"><fmt:message key="common.parametrage.categorie" /></a>
			</div>
		</div></li>
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

</ul>

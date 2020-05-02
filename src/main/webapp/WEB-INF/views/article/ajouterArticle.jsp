<%@ include file="/WEB-INF/views/includes/include.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title><fmt:message code="common.article" /></title>
	<link href="<%=request.getContextPath()%>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
   <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body id="page-top">
	<div id="wrapper">
		<%@include file="/WEB-INF/views/menu_left/leftMenu.jsp" %><!--leftMenu-->
			<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@include file="/WEB-INF/views/menu_top/topMenu.jsp" %><!--topMenu-->
				<div class="container-fluid">
					<h1 class="h3 mb-4 text-gray-800"><fmt:message code="common.article" /></h1>
				</div>
			</div>
	<div class="container">	
		<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
							<div class="panel-heading">
								<fmt:message code="article.nouveau"/>
							</div>
							<div class="panel-body"><!-- Formulaire Article -->
								<c:url value="/article/enregistrer"	var= "urlEnregistrer" />	
		<!-- forrmulaire pour ajouter et modifier article -->
              					   <f:form modelAttribute="article" action="${urlEnregistrer}" enctype="multipart/form-data" role="form"><!-- enctype: envoyer une photo pour enregister  -->
              						  <f:hidden path="idArticle" /><!-- qu on fait la modification le id est enregistrer -->
              						   <f:hidden path="photo" /><!-- la photo -->
              							<div class="form-group">
              								<label><fmt:message code="common.codeArticle"/></label>
              								<f:input path="codeArticle" class="form-control" placeholder="codeArticle"/>
              							</div>
              							<div class="form-group">
              								<label><fmt:message code="common.designation"/></label>
              								<f:input path="designation" class="form-control" placeholder="designation"/>
              							</div>
              							<div class="form-group">
              								<label><fmt:message code="common.prixUnitaireHT"/></label>
              								<f:input id="prixUnitHT" path="prixUnitaireHT" class="form-control" placeholder="prixUnitaireHT"/>
              							</div>
              							<div class="form-group">
              								<label><fmt:message code="common.tauxTva"/></label>
              								<f:input id="tauxTva" path="tauxTva" class="form-control" placeholder="tauxTva"/>
              							</div>
              							<div class="form-group">
              								<label><fmt:message code="common.prixUnitaireTTC"/></label>
              								<f:input id="prixUnitTTC" path="prixUnitaireTTC" class="form-control" placeholder="prixUnitaireTTC"/>
              							</div>
              				<!-- chaque article a une categorie -->
              							<div class="form-group">
              								<label><fmt:message code="common.categorie"/></label>
              								<f:select class="form-control" path="categorie.idCategorie" items="${categories }" itemLabel="code" itemValue="idCategorie"/>
              							</div>
              							<div class="form-group">
              								<label><fmt:message code="common.photo"/></label>
              								<input name="file" type="file" >
              							</div>
              							<div class="panel-footer">
              								<button type="submit" class="btn btn-primary"><i class="fa fa-save">&nbsp;<fmt:message code="common.enregister"/></i></button>
              								<a href="<c:url value="/article/" />" class="btn btn-danger"><i class="fa fa-arrow-left">&nbsp;<fmt:message code="common.annuler"/></i></a>
              							</div>
              						</f:form>
                            </div>
					</div>
				</div>
		</div>
			
	</div>		
			 
			
			
			
			
			
			
			
			
			
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2019</span>
					</div>
				</div>
			</footer>
		</div>
	</div>
<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i></a>
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"	data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="<%=request.getContextPath() %>/WEB-INF/views/login/login.jsp">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath() %>/resources/vendor/jquery/jquery.min.js"></script>
	<script	src="<%=request.getContextPath() %>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script	src="<%=request.getContextPath() %>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script	src="<%=request.getContextPath() %>/resources/js/sb-admin-2.min.js"></script>
	<!-- mon javascript file article.js -->
	<script	src="<%=request.getContextPath() %>/resources/javascript/article.js"></script>
</body>
</html>

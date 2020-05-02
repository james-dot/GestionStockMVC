<%@ include file="/WEB-INF/views/includes/include.jsp" %>

<!DOCTYPE html>
<html lang="fr">

<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<title><fmt:message code="common.client" /></title>
		<link href="<%=request.getContextPath()%>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/css/sb-admin-2.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body id="page-top">
	<div id="wrapper">
		<%@include file="/WEB-INF/views/menu_left/leftMenu.jsp" %>
			<div id="content-wrapper" class="d-flex flex-column"><!--leftMenu-->
			<div id="content">
				<%@include file="/WEB-INF/views/menu_top/topMenu.jsp" %><!--topMenu-->
					<div class="container-fluid">
					<h1 class="h3 mb-4 text-gray-800"><fmt:message code="common.client" /></h1>
				</div>
			<div class="container-fluid">
           <div class="card shadow mb-4">
                  <div class="row">
            		<div class="col-lg-12">
            			<ol class="breadcrumb"> 
            					<li><a href="<c:url value="/client/nouveau" />" ><i class="fas fa-user-plus"></i>&nbsp;<fmt:message code="common.ajouter" /></a></li>
            					<li><a href="#"><i class="fa fa-download"></i>&nbsp;<fmt:message code="common.exporter" /></a></li>
            					<li><a href="#"><i class="fa fa-upload"></i>&nbsp;<fmt:message code="common.importer" /></a></li>
               			</ol>
            			        			
            		</div>
               </div>
            <div class="card-body">
               <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th><fmt:message code="common.photo" /></th>
                      <th><fmt:message code="common.nom" /></th>
                      <th><fmt:message code="common.prenom" /></th>
                      <th><fmt:message code="common.adresse" /></th>
                      <th><fmt:message code="common.mail" /></th>
                   	  <th><fmt:message code="common.actions" /></th>
                    </tr>
                  </thead>
                
                  <tbody>
	                  <c:forEach items="${clients }" var="client">
	                    <tr class="add gradeX">
	                      <td class="center"><img src="${client.getPhoto()}" width="50px" height="50px"/></td>
	                      <td>${client.getNom() }</td>
	                      <td>${client.getPrenom() }</td>
	                      <td>${client.getAdresse() }</td>
	                      <td>${client.getEmail() }</td>
	                      <td>
	                      		<c:url value="/client/modifier/${client.getIdClient()}" var="urlModif" />
		                      		  <a href="${urlModif}"><i class="fa fa-edit"></i></a> <!--icon modifier -->
			                      		&nbsp;||&nbsp;
			                      	  <a href="javascript:void(0);" data-toggle="modal" data-target="#modalClient${client.getIdClient()}"><i class="fas fa-thumbs-down"></i></a> <!--icon supprimer -->
<!-- Popup pour confirmer la la suppression d'un client -->		
								<div class="modal fade" id="modalClient${client.getIdClient()}" tabindex="-1"	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel"><fmt:message code="common.confir.suppression"/></h4>
											</div>
											<div class="modal-body">
													<fmt:message code="client.confir.suppression.msg"/>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-success" data-dismiss="modal"><i class="fa fa-arrow-left">&nbsp;<fmt:message code="common.annuler"/></i></button>
												<c:url value="/client/supprimer/${client.getIdClient() }" var="urlSuppression" />
												<a href="${urlSuppression}" class="btn btn-danger"><i class="fa fa-trash-o"></i>&nbsp;<fmt:message code="common.confirmer"/></a>
											</div>
									</div>
							</div> 
	<!-- /POPUP -->						                     	  
			                      	  
	                      </td>
	                    </tr>
	                   </c:forEach>
                   </tbody>
                </table>
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
	<button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
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
  <script src="<%=request.getContextPath() %>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/js/sb-admin-2.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/vendor/jquery/jquery.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/js/demo/datatables-demo.js"></script>
</body>
</html>

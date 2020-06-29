<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mis Pedidos</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>

	<%@include file="header.jsp"%>

	<h5 class="text-center display-4">Mis Pedidos</h5>
	<section class="container -sm p-4">
		<!-- ACA VA LA LISTA PAPA -->
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Importe</th>
					<th scope="col">Estado</th>
					<th scope="col"><c:if test="${usuario.rol == 'ADMINISTRADOR'}">Usuario</c:if></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pedidos}" var="pedido">
					<tr>
						<th scope="row">${pedido.id}</th>
						<td>${pedido.precio}</td>
						<td>${pedido.estado}</td>
						<td><c:if test="${usuario.rol == 'ADMINISTRADOR'}">
    					${pedido.usuario.email}
    				</c:if></td>
						<td><a href="detallepedido?id=${pedido.id}">VER DETALLE</a></td>
						<td><c:if
								test="${pedido.estado != 'CANCELADO' && pedido.estado != 'ENVIADO'}">
								<a href="cancelarpedido?id=${pedido.id}">CANCELAR</a>
							</c:if></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>
	<!-- Footer -->
	<%@include file="footer.jsp"%>

	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmar pedido</title>
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

	<div class="container mt-5 mb-4">
		<h3>Informaci�n de su pedido</h3>
	</div>
	<div class="container">
		<li style="list-style: none">
			<h4>
				<u>Resumen de men�</u>
			</h4>
			<ul class="list-group list-group-flush">
				<li class="list-group-item"><span class="h5">${comida.nombre}</span>
					porci�n individual <span class="h5 text-danger float-right">$
						${comida.precio}</span></li>
				<li class="list-group-item"><span class="h5">Env�o </span> <span
					class="h5 text-danger float-right">$ ${viaje}</span></li>
			</ul>
			<div class="float-right">
				<span class="h5 m-2">Total: <span class="h4 text-danger">$${precio}</span></span>
			</div>
		</li>

		<div class="mt-5">
			<form action="pagarpedido" method="GET" class="d-inline">
				<input type="hidden" name="id" value="${id}"> <input
					type="hidden" name="idPosicion" value="${idPosicion}">
					<input
					type="hidden" name="idCupon" value="0">
					
				<script
					src="https://www.mercadopago.com.ar/integrations/v1/web-payment-checkout.js"
					data-preference-id="${preference.id}">
					
				</script>
			</form>
			<button type="button" onclick="history.go(-1)" class="btn btn-outline-danger m-3">Volver</button>
		</div>
	</div>

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
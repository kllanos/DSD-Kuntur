<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detalle de Pagos de cada Alumno</title>
</head>
<body>
<h1>Detalle Pagos Alumno</h1>

<c:if test="${empty alumno}">
	No records found!
</c:if>

<c:if test="${!empty alumno}">
	<table style="border: 1px solid #333">
		<tr>
		<td style="width: 100px">Dni</td>
		<td>${alumno.dni}</td>
		</tr>
		
		<tr>
		<td>Nombres</td>
		<td>${alumno.nombres}</td>
		</tr>
		
		<tr>
		<td>Apellidos</td>
		<td>${alumno.apellidos}</td>
		</tr>
		
		<tr>
		<td>Monto</td>
		<td>${alumno.monto}</td>
		</tr>
		
		<tr>
		<td>Periodo</td>
		<td>${alumno.periodo}</td>
		</tr>
		
		<tr>
		<td>Estado</td>
		<td>${alumno.estado}</td>
		</tr>
	</table>
</c:if>

</body>
</html>
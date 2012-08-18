<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Parent"%>
<%@page import="pe.edu.upc.dsd.ws.bean.Alumno"%>
<%@page import="java.util.List"%>


<html>
<head>
<title> Welcome to Markham College </title>
</head>

<body bgcolor= "#FFFFFF">
<%@ include file="mk-menu.jsp" %>
<font face="verdana">


<table border="1" align="center"> 
		
		<tr height="80">
		<td bgcolor="#F3F781"><br><font face="verdana"><small>
		Pulse en "Ver detalle" para informarse de los prerrequisitos pendientes</br><br></br>
		Por favor, acérquese a nuestras oficinas en San Antonio para resolver los prerrequisitos pendientes.<br></br>
		</small></font></td></tr>
		
		
</font>
</table>

	
<%  
int c=0;  
%>  
<c:forEach  items="${childrenParents}" var="hijos">  


<br></br>
		<table align="center"><tr><td><font face="verdana"><b>${hijos.apPaterno} ${hijos.apMaterno}, ${hijos.nombre}  </b></front></td></tr></table>
<br></br>
<table border="1" WIDTH=30% align="center" > 
		<tr align="center">
			<td colspan="3"><font face="verdana"><small><b><br>Prerrequisitos</br><font face="verdana", color="blue">Ver detalles</b></small></font></th>
		</tr>
		<tr><th align="left"><small><font face="verdana">Aspectos Académicos</font></small></th>
			<th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		</tr>
		<tr>
			<th align="left"><small><font face="verdana">Libros y/o multas</font></small></th>
			<th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		</tr>
		<tr>
			<th align="left"><small><font face="verdana">Deudas de pensiones</font></small></th>
			<th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		</tr>
		<tr>
			<th align="left"><small><font face="verdana">Deudas varias</font></small></th>
			<th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		</tr>
</table>

<% 
c++;
%>
</c:forEach>  

</body>


</html>
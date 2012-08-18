<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Persona"%>
<%@page import="java.util.List"%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title> Welcome to Markham College </title>

<script type="text/javascript">

	function buscar()
	{
	
		document.formularioPersona.accion.value = 'buscar';
		document.formularioPersona.submit();
		
	}
	
	function grabarDNI()
	{

		document.formularioPersona.accion.value = 'grabardni';
		document.formularioPersona.submit();
	}
	
</script>
</head>

<body bgcolor= "#FFFFFF">
<form name="formularioPersona" method="get" action="<%=request.getContextPath()%>/buscarPersona.do">
<input type="hidden" name="accion" value=""/>
<%@ include file="mk-menu.jsp" %>

<font face="verdana"><h5><b>Matrícula > Proceso de Matrícula</b></h5>

<%
int s=0;    
if (request.getParameter("s") != null) {
       s = Integer.parseInt(request.getParameter("s"));
}
pageContext.setAttribute("s", s);


String inicio=null; 
if (request.getParameter("accion") != null) {
	inicio = request.getParameter("accion");
   // out.println("Please enter your name."+s);    
}
pageContext.setAttribute("inicio", inicio);
%>

<input type="hidden" name="s" value="<%= s%>"/>
<c:set var="alumnoSeleccionado" value="${childrenParents[s].codigoAlumno}" scope="session" />



<div align="center">
<b><h4>${childrenParents[s].apPaterno} ${childrenParents[s].apMaterno},  ${childrenParents[s].nombre}</h4></b>



<b><h5>DOCUMENTO DE IDENTIDAD DEL ESTUDIANTE</h5></b>

<br><small>Ingrese el tipo y número de documento de identidad del estudiante.</br></small>

<br></br>


<table>
<tr><td>Ingresar DNI</td><td><input type="text" name="txtDNI" value="${model.persona.dni}" /></td><td><input type="submit" name="btnConsultar" value="Consultar DNI" onclick="javascript:buscar();"  /></td></tr>
</table>
<br>
<c:if test="${model.persona.dni == null && inicio != null }">
<font face="verdana" color="red"><b>DNI Incorrecto</b></font>
</c:if>


<table  width="400" cellspacing="0" cellpadding="0" align="center" style="border-right: 1px solid #D2ae7b; border-LEFT: 1px solid #D2ae7b; border-TOP: 1px solid #D2ae7b;font-family:Verdana;font-size:small;">
<tr><td colspan=2 align="center" style="border-bottom: 1px solid #D2ae7b;"><b>Datos Reniec</b></td></tr>
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">DNI</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.dni}</td></tr>    
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">Nombres</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.nombres}</td></tr>  
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">Apellido Paterno</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.apellidoPaterno}</td></tr>  
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">Apellido Materno</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.apellidoMaterno}</td></tr>  
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">Fecha de Nacimiento</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.fechaNacimiento}</td></tr>  
</table>
<br></br>



<br></br>

<!---
<table border="1" WIDTH=35% height=5% align="center" > 
		<td><font face="verdana"><small>Si el número del documento ingresado es correcto presione "Grabar DNI" para continuar</small></font></td>
		<A href="mk-registra-sit-esp.jsp"><img src="images/continuar.png" width="98" height="34" align="right"></A>
		</tr>
				
</table>
--->
<c:if test="${model.persona.dni != null}">

	<table border="1" WIDTH=35% height=5% align="center" > 
			<tr>
			<td>
			<!-- 
			<A href="mk-registra-sit-esp.jsp"><img src="images/continuar.png" width="98" height="34" align="right"></A>
			<input type="submit" value="Grabar DNI" name="btnSubmit" id="btnSubmit">
			 -->
			<input type="submit" name="btnGrabarDNI" value="Grabar DNI" onclick="javascript:grabarDNI();"  />
			
			</td>
			
			
			<td><font face="verdana"><small>Si el número del documento ingresado es correcto presione "Grabar DNI" para continuar</small></font></td>
			</tr>
	</table>
	
</c:if>

</div>

</form>

</body>


</html>
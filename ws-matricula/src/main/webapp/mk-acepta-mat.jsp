<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Parent"%>
<%@page import="pe.edu.upc.dsd.ws.bean.Alumno"%>
<%@page import="java.util.List"%>
<html>
<head>
<title> Welcome to Markham College </title>

<script type="text/javascript">

	function grabarMat()
	{

		document.formularioPersona.accion.value = 'grabaraceptacionmat';
		document.formularioPersona.submit();
	}
	
</script>

</head>

<body bgcolor= "#FFFFFF">
<%@ include file="mk-menu.jsp" %>
<form name="formularioPersona" method="get" action="<%=request.getContextPath()%>/matricula.do">
<input type="hidden" name="accion" value=""/>
<font face="verdana"><b>Matrícula > Proceso de Matrícula</b></font>
<br></br>


<hr width=80% align="left"></hr> 


<font face="verdana"><b><h5>SEGUROS DE ACCIDENTES DEL ESTUDIANTE</h5></b>

<br><small>En esta sección deberá indicar si desea tomar el seguro de accidentes para estudiantes</br>

<br>En caso que elija el <b>"Si"</b> se agregará US$90 a la cuota de la pensión de abril del estudiante.

<br>En caso que elija el <b>"No"</b> se le enviará en marzo una carta que excime al Colegio de responsabilidad de pago en caso de accidente.</br>


<br><b><font color="red">IMPORTANTE: Si acepta el seguro, no es posible cambiar la decisión.</b></font>


<b>Seguro de accidentes del colegio:</b> 
<select name="elegirSeg">
<option>Si $90.00 adicionales</option>
<option>No desea seguro</option>
</select>
<br />
 


<br>Si <b>No</b> desea el seguro del colegio, y tiene un seguro de accidentes particular favor indique la compañia de seguros con quien lo tiene.
</br>


<select name="elegirSegPropio">
<option>...ninguna...</option>
<option>Mapfre</option>
<option>Pacífico</option>
<option>Positiva</option>
<option>Rimac</option>
</select>
Otra compañia:<input name="companiaSeg" rows="1" cols="30" type="text" value=>
</small>

<br></br>


<hr width=80% align="left"></hr> 

<font face="verdana"><b><h5>PROGRESO ACADEMICO DE SU HIJO(A), SU ESFUERZO Y CONDUCTA </h5></b>

<small><input name="checkAceptacionMat" type="checkbox" />La aceptación de la matrícula indica que los padres se comprometen a asegurar que el progreso académico de su hijo(a), su esfuerz	y conducta (fuera y dentro del colegio).

sean en  todo momento, aceptables para el Colegio. El Colegio se reserva el derechi de requerir el retiro  de un estudiante que, en opinión del Headmaster, tenga un progreso

<br></br>
<table border="1"> 
		
		<tr height="5">
		<td bgcolor="#F3F781"><br><font face="verdana"><small><small>
		<b>Por favor escriba su nombre completo y presione el botón Matricular.</b><br></br>
		</small></small></font></td></tr>
		
		
</font>
</table>



<b>Su nombre:</b><input name="nombreFirma" rows="1" cols="500" type="text" value="">

<br></br>


<input type="submit" name="btnGrabar" value="Continuar" onclick="javascript:grabarMat();"  />



</small>





</form>
</font>

</body>


</html>
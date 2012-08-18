<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Persona"%>
<%@page import="java.util.List"%>
	
	<html>
	<head>
	<script type="text/javascript">

	function grabarMat()
	{

		document.fin.accion.value = 'retornaprincipal';
		document.fin.submit();
	}
	
</script>
	
		</head>
		<body bgcolor="white" text="black" link="#0000FF" vlink="#0000FF" alink="#0000FF" 
		>
		
<p></p>
<table border="0" cellpadding="20" bgcolor="#FFFFFF" width="100%" >
<tr><td>

<br>


<p></p>
<center>
<img src="images/logo.jpg"><br>
<p></p>
<font size=3 face="Verdana">
	<strong>MATRÍCULA EN LÍNEA 2012</I></strong><br>

</font>
<p></p>

<font size=3 face="Verdana">

<strong>${childrenParents[s].apPaterno} ${childrenParents[s].apMaterno},  ${childrenParents[s].nombre}</strong>
<p></p>
El alumno ha sido matriculado.
	<p></p>
	<strong>Código de Matrícula:</strong><br>
	<strong><font color="green" size=4 face="Verdana">${childrenParents[s].codigomat}</font></strong>

<p></p>
<font size=3 face="Verdana">
<strong>He Aceptado:</strong><br>
<font size=3 face="Verdana">
<table border=0 width=600 >
<tr><td>
<font size=3  face="Verdana">
- Haber leido la carta que informa de las características pedagógicas y condiciones económicas a las que se ajustará la prestación del servicio educativo en 2012 (R.M.F 00101001-OO01)
<p></p>

- No tomar el seguro de accidentes, se me enviará en marzo una carta que exime al Colegio de responsabilidad de pago en caso de accidentes. 
<p></p>
- 
La aceptación de la matrícula indica que los padres se comprometen a asegurar que el progreso académico de su hijo(a), su esfuerzo y conducta (fuera y dentro del colegio) sean , en todo momento , aceptables para el Colegio.
<p></p>
</font>
</td></tr></table>
<p></p>
<strong><font size=3  face="Verdana">Matrícula realizada por:</font></strong><br>
<font size=3  face="Verdana">${parent.apPaterno} ${parent.apMaterno}, ${parent.nombre}</font>
<p></p>

</font>


<span>
<p>
<p>
<form name="fin" action="<%=request.getContextPath()%>/matricula.do" method=post>
<input type="hidden" name="accion" value=""/>
<input type=submit name="finaliza" onclick="javascript:grabarMat();" value="Regresar al proceso de matrícula">
</span>

</form>

</center>


</td></tr>
</table>

</body>
</html>
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
<font face="verdana"><b>Matrícula > Proceso de Matrícula</b></font>
<br></br>

<font face="verdana"><b><h5>REGISTRO DE SITUACIONES ESPECIALES</h5></b>

<br><small>Situaciones especiales en la familia, problemas de salud o de aprendizaje, factores emocionales, etc., pueden afectar el desempeño escolar de hijo(a). Es muy importante que
<br>los tutores y profesores estén informados de estas situaciones.

<br>El registro de situaciones especiales ha sido creado para comunicar esta información a los nuevos profesoresy tutor de su hijo(a).</br>

<form method="post">
<br>Por favor, describa cualquier situación especial abajo (excepto problemas de salud): </br>
<textarea name="comentarios" rows="10" cols="85"></textarea>

<br>
<input name="check" type="checkbox" /><b>Por favor marque el recuadro si desea que solo el Headmster, el Director y el Jefe de Sección pueden ver esta información.<br />

<br>Problemas de salud y/o alergias</br>
<textarea name="comentarios" rows="10" cols="85"></textarea>
</form>


<form method="post">
<!-- 
<input type="submit" value="Continuar" />
-->

<A href="mk-acepta-mat.jsp"><img src="images/continuar.png" width="98" height="34" align="right"></A>
</form>
 

</small>
</font>

</body>


</html>
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
<font face="verdana"><b>Matrícula > Actualización de datos</b></font>

		<br></br>
		<br></br>


<table border="1" WIDTH=39.6%> 
		
		<tr align="center">
			<td colspan="3" bgcolor="#DFDFD8"><font face="verdana"><small><b>DATOS PERSONALES</b></small></font></th>
		</tr>
		
		<tr>	<td align="center" bgcolor="#FCF9C3"><small><b><font face="verdana">DESCRIPCION</font></b></small></td>
			<td align="center" bgcolor="#FCF9C3"><small><b><font face="verdana">PADRE</font></b></small></td>
			<td align="center" bgcolor="#FCF9C3"><small><b><font face="verdana">MADRE</font></b></small></td>
		</tr>
		

		<tr>	<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Apellido Paterno</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_appp" size=25 type="text" value=>
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_appm" size=25 type="text" value=>
				</font></small></td>

		<tr>	<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Apellido Materno</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_apmp" size=25 type="text" value=>
				</font></small></td>	
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_apmm" size=25 type="text" value=>
				</font></small></td>
		</tr>
		
		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Nombres</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_np" size=25 type="text" value=></font></small></td>

			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_nm" size=25 type="text" value=></select></font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Fecha Nac.</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_dp" size=1 type="text" value="">
				- 

				<select name="sel_mp">
							   <option>Ene</option>
							   <option>Feb</option>
							   <option>Mar</option>
							   <option>Abr</option>
							   <option>May</option>
							   <option>Jun</option>
							   <option>Jul</option>
							   <option>Ago</option>
							   <option>Sep</option>
							   <option>Oct</option>
							   <option>Nov</option>
							   <option>Dic</option> 
				</select></font></small> - 

				<input name="txt_ap" size=3 type="text" value=""> </td>
				 
				

			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_dm" size=1 type="text" value="">
				- 

				<select name="sel_mm">
							   <option>Ene</option>
							   <option>Feb</option>
							   <option>Mar</option>
							   <option>Abr</option>
							   <option>May</option>
							   <option>Jun</option>
							   <option>Jul</option>
							   <option>Ago</option>
							   <option>Sep</option>
							   <option>Oct</option>
							   <option>Nov</option>
							   <option>Dic</option> 
				</select></font></small> - 

				<input name="txt_ap" size=3 type="text" value=""> </td>
				 
				
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Estado Civil</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana"><select name="sel_ecp">
							   <option>-----------</option>
							   <option>CASADO</option>
							   <option>SOLTERO</option>
							   <option>DIVORCIADO</option>
							   <option>VIUDO</option>
							   <option>CONVINIENTE</option>
			</select></font></small></td>
			
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana"><select name="sel_ecm">
							   <option>-----------</option>
							   <option>CASADA</option>
							   <option>SOLTERA</option>
							   <option>DIVORCIADA</option>
							   <option>VIUDA</option>
							   <option>CONVINIENTE</option>
			</select></font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Nacionalidad</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_np" size=25 type="text" value=>
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_nm" size=25 type="text" value=>
				</font></small></td>
		</tr>


		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Tipo de Sangre</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana"><select name="txt_tsp">
							   <option>-----------</option>
							   <option>RH O+</option>
							   <option>RH O-</option>
							   <option>RH A+</option>
							   <option>RH A-</option>
							   <option>RH B+</option>
							   <option>RH B-</option>
							   <option>RH AB+</option>
							   <option>RH AB-</option>
			</select></font></small></td>


			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana"><select name="txt_tsm">
							   <option>-----------</option>
							   <option>RH O+</option>
							   <option>RH O-</option>
							   <option>RH A+</option>
							   <option>RH A-</option>
							   <option>RH B+</option>
							   <option>RH B-</option>
							   <option>RH AB+</option>
							   <option>RH AB-</option>
			</select></font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Profesión</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_pfp" size=25 type="text" value=>
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_pfm" size=25 type="text" value=>
				</font></small></td>
		</tr>

		
		<tr align="center">
			<td colspan="3" bgcolor="#DFDFD8"><font face="verdana"><small><b>DOCUMENTO DE IDENTIDAD</b></small></font></th>
		</tr>


		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">DNI</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_dnip" size=10 type="text" value=" ">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_dnim" size=10 type="text" value=" ">
				</font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">C.E.</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_cep" size=10 type="text" value=" ">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_cem" size=10 type="text" value=" ">
				</font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Otro documento</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_odp" size=10 type="text" value=" ">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_odm" size=10 type="text" value=" ">
				</font></small></td>
		</tr>

		
		<tr align="center">
			<td colspan="3" bgcolor="#DFDFD8"><font face="verdana"><small><b>INFORMACIÓN DEL CELULAR Y DEL CORREO ELECTRONICO</b></small></font></th>
		</tr>
		<tr align="left">
			<td colspan="3" bgcolor="#FCF9C3"><font face="verdana"><small>Favor de ingresar su número de celular y su correo electrónico más utilizado.</small></font></th>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Celular</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_ncp" size=8 type="text" value=>
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_ncm" size=8 type="text" value=>
				</font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">E-mail</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_emp" size=25 type="text" value=>
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_emm" size=25 type="text" value=>
				</font></small></td>
		</tr>


</font>
</table>

	

	<br>
	<A href="mk-proceso-mat.jsp"><form><input type="submit" value="Actualizar datos"></form></A>

</body>
</html>
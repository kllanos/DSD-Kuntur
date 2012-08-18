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


	function grabar()
	{

		document.formularioParent.accion.value = 'actualizardatos';
		document.formularioParent.submit();
	}
	
</script>


</head>

<body bgcolor= "#FFFFFF">
<form name="formularioParent" method="get" action="<%=request.getContextPath()%>/actualizarParent.do">
<input type="hidden" name="accion" value=""/>

<input type="hidden" name="padreCod" value="${familyParents[0].codigoParent}"/>
<input type="hidden" name="madreCod" value="${familyParents[2].codigoParent}"/>

<%@ include file="mk-menu.jsp" %>
<font face="verdana"><b>Matrícula > Actualización de datos</b></font>

		<br></br>
		<br></br>


<table border="0" WIDTH=50%> 
		
		<tr align="center">
			<td colspan="3" bgcolor="#DFDFD8"><font face="verdana"><small><b>DATOS PERSONALES</b></small></font></th>
		</tr>
		
		<tr>	<td align="center" bgcolor="#FCF9C3"><small><b><font face="verdana">DESCRIPCION</font></b></small></td>
			<td align="center" bgcolor="#FCF9C3"><small><b><font face="verdana">PADRE</font></b></small></td>
			<td align="center" bgcolor="#FCF9C3"><small><b><font face="verdana">MADRE</font></b></small></td>
		</tr>
		

		<tr>	<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Apellido Paterno</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_appp" size=25 type="text" value="${familyParents[0].apPaterno}">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_appm" size=25 type="text" value="${familyParents[2].apPaterno}">
				</font></small></td>

		<tr>	<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Apellido Materno</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_apmp" size=25 type="text" value="${familyParents[0].apMaterno}">
				</font></small></td>	
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_apmm" size=25 type="text" value="${familyParents[2].apMaterno}">
				</font></small></td>
		</tr>
		
		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Nombres</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_np" size=25 type="text" value="${familyParents[0].nombre}"></font></small></td>

			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_nm" size=25 type="text" value="${familyParents[2].nombre}"></select></font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Fecha Nac.</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_dp" size=1 type="text" value="${familyParents[0].dianac}">
				- 
				<select name="sel_mp">
							   <option value="01" <c:if test="${familyParents[0].mesnac == '01'}">selected</c:if>>Ene</option>
							   <option value="02" <c:if test="${familyParents[0].mesnac == '02'}">selected</c:if>>Feb</option>
							   <option value="03" <c:if test="${familyParents[0].mesnac == '03'}">selected</c:if>>Mar</option>
							   <option value="04" <c:if test="${familyParents[0].mesnac == '04'}">selected</c:if>>Abr</option>
							   <option value="05" <c:if test="${familyParents[0].mesnac == '05'}">selected</c:if>>May</option>
							   <option value="06" <c:if test="${familyParents[0].mesnac == '06'}">selected</c:if>>Jun</option>
							   <option value="07" <c:if test="${familyParents[0].mesnac == '07'}">selected</c:if>>Jul</option>
							   <option value="08" <c:if test="${familyParents[0].mesnac == '08'}">selected</c:if>>Ago</option>
							   <option value="09" <c:if test="${familyParents[0].mesnac == '09'}">selected</c:if>>Sep</option>
							   <option value="10" <c:if test="${familyParents[0].mesnac == '10'}">selected</c:if>>Oct</option>
							   <option value="11" <c:if test="${familyParents[0].mesnac == '11'}">selected</c:if>>Nov</option>
							   <option value="12" <c:if test="${familyParents[0].mesnac == '12'}">selected</c:if>>Dic</option> 
				</select></font></small> - 
				<input name="txt_ap" size=3 type="text" value="${familyParents[0].anionac}"> </td>
				 
				

			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_dm" size=1 type="text" value="${familyParents[2].dianac}">
				- 
				<select name="sel_mm">
							   <option value="01" <c:if test="${familyParents[2].mesnac == '01'}">selected</c:if>>Ene</option>
							   <option value="02" <c:if test="${familyParents[2].mesnac == '02'}">selected</c:if>>Feb</option>
							   <option value="03" <c:if test="${familyParents[2].mesnac == '03'}">selected</c:if>>Mar</option>
							   <option value="04" <c:if test="${familyParents[2].mesnac == '04'}">selected</c:if>>Abr</option>
							   <option value="05" <c:if test="${familyParents[2].mesnac == '05'}">selected</c:if>>May</option>
							   <option value="06" <c:if test="${familyParents[2].mesnac == '06'}">selected</c:if>>Jun</option>
							   <option value="07" <c:if test="${familyParents[2].mesnac == '07'}">selected</c:if>>Jul</option>
							   <option value="08" <c:if test="${familyParents[2].mesnac == '08'}">selected</c:if>>Ago</option>
							   <option value="09" <c:if test="${familyParents[2].mesnac == '09'}">selected</c:if>>Sep</option>
							   <option value="10" <c:if test="${familyParents[2].mesnac == '10'}">selected</c:if>>Oct</option>
							   <option value="11" <c:if test="${familyParents[2].mesnac == '11'}">selected</c:if>>Nov</option>
							   <option value="12" <c:if test="${familyParents[2].mesnac == '12'}">selected</c:if>>Dic</option> 
				</select></font></small> - 
				<input name="txt_am" size=3 type="text" value="${familyParents[2].anionac}"> </td>
				 
				
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Estado Civil</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana"><select name="sel_ecp">
							   <option value="" 		 	<c:if test="${familyParents[0].estadocivil == ''}">selected</c:if>>-----------</option>
							   <option value="Casado"	 	<c:if test="${familyParents[0].estadocivil == 'Casado'}">selected</c:if>>CASADO</option>
							   <option value="Soltero"	 	<c:if test="${familyParents[0].estadocivil == 'Soltero'}">selected</c:if>>SOLTERO</option>
							   <option value="Divorciado"	<c:if test="${familyParents[0].estadocivil == 'Divorciado'}">selected</c:if>>DIVORCIADO</option>
							   <option value="Viudo"	 	<c:if test="${familyParents[0].estadocivil == 'Viudo'}">selected</c:if>>VIUDO</option>
							   <option value="Conviviente"	<c:if test="${familyParents[0].estadocivil == 'Conviviente'}">selected</c:if>>CONVINIENTE</option>
			</select></font></small></td>
			
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana"><select name="sel_ecm">
	   							<option value="" 		 	<c:if test="${familyParents[2].estadocivil == ''}">selected</c:if>>-----------</option>
							   <option value="Casado"	 	<c:if test="${familyParents[2].estadocivil == 'Casado'}">selected</c:if>>CASADA</option>
							   <option value="Soltero"	 	<c:if test="${familyParents[2].estadocivil == 'Soltero'}">selected</c:if>>SOLTERA</option>
							   <option value="Divorciado"	<c:if test="${familyParents[2].estadocivil == 'Divorciado'}">selected</c:if>>DIVORCIADA</option>
							   <option value="Viudo"	 	<c:if test="${familyParents[2].estadocivil == 'Viudo'}">selected</c:if>>VIUDA</option>
							   <option value="Conviviente"	<c:if test="${familyParents[2].estadocivil == 'Conviviente'}">selected</c:if>>CONVINIENTE</option>
			</select></font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Nacionalidad</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_nnp" size=25 type="text" value="${familyParents[0].nacionalidad}">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_nnm" size=25 type="text" value="${familyParents[2].nacionalidad}">
				</font></small></td>
		</tr>


		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Tipo de Sangre</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana"><select name="txt_tsp">
							   <option value="" 		<c:if test="${familyParents[0].tiposangre == ''}">selected</c:if>>-----------</option>
							   <option value="RH O+"	<c:if test="${familyParents[0].tiposangre == 'RH O+'}">selected</c:if>>RH O+</option>
							   <option value="RH O-"	<c:if test="${familyParents[0].tiposangre == 'RH O-'}">selected</c:if>>RH O-</option>
							   <option value="RH A+"	<c:if test="${familyParents[0].tiposangre == 'RH A+'}">selected</c:if>>RH A+</option>
							   <option value="RH A-"	<c:if test="${familyParents[0].tiposangre == 'RH A-'}">selected</c:if>>RH A-</option>
							   <option value="RH B+"	<c:if test="${familyParents[0].tiposangre == 'RH B+'}">selected</c:if>>RH B+</option>
							   <option value="RH B-"	<c:if test="${familyParents[0].tiposangre == 'RH B-'}">selected</c:if>>RH B-</option>
							   <option value="RH AB+"	<c:if test="${familyParents[0].tiposangre == 'RH AB+'}">selected</c:if>>RH AB+</option>
							   <option value="RH AB-"	<c:if test="${familyParents[0].tiposangre == 'RH AB-'}">selected</c:if>>RH AB-</option>
			</select></font></small></td>


			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana"><select name="txt_tsm">
							   <option value="" 		<c:if test="${familyParents[2].tiposangre == ''}">selected</c:if>>-----------</option>
							   <option value="RH O+"	<c:if test="${familyParents[2].tiposangre == 'RH O+'}">selected</c:if>>RH O+</option>
							   <option value="RH O-"	<c:if test="${familyParents[2].tiposangre == 'RH O-'}">selected</c:if>>RH O-</option>
							   <option value="RH A+"	<c:if test="${familyParents[2].tiposangre == 'RH A+'}">selected</c:if>>RH A+</option>
							   <option value="RH A-"	<c:if test="${familyParents[2].tiposangre == 'RH A-'}">selected</c:if>>RH A-</option>
							   <option value="RH B+"	<c:if test="${familyParents[2].tiposangre == 'RH B+'}">selected</c:if>>RH B+</option>
							   <option value="RH B-"	<c:if test="${familyParents[2].tiposangre == 'RH B-'}">selected</c:if>>RH B-</option>
							   <option value="RH AB+"	<c:if test="${familyParents[2].tiposangre == 'RH AB+'}">selected</c:if>>RH AB+</option>
							   <option value="RH AB-"	<c:if test="${familyParents[2].tiposangre == 'RH AB-'}">selected</c:if>>RH AB-</option>
			</select></font></small></td>
		</tr>




		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Profesión</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_pfp" size=25 type="text" value="${familyParents[0].profesion}">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_pfm" size=25 type="text" value="${familyParents[2].profesion}">
				</font></small></td>
		</tr>

		
		<tr align="center">
			<td colspan="3" bgcolor="#DFDFD8"><font face="verdana"><small><b>DOCUMENTO DE IDENTIDAD</b></small></font></th>
		</tr>


		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">DNI</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_dnip" size=10 type="text" value="${familyParents[0].documentoIdentidad}">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_dnim" size=10 type="text" value="${familyParents[2].documentoIdentidad}">
				</font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">C.E.</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_cep" size=10 type="text" value="${familyParents[0].ce}">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_cem" size=10 type="text" value="${familyParents[2].ce}">
				</font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">Otro documento</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_odp" size=10 type="text" value="${familyParents[0].otrodoc}">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_odm" size=10 type="text" value="${familyParents[2].otrodoc}">
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
				<input name="txt_ncp" size=8 type="text" value="${familyParents[0].celular}">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_ncm" size=8 type="text" value="${familyParents[2].celular}">
				</font></small></td>
		</tr>

		<tr>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">E-mail</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_emp" size=25 type="text" value="${familyParents[0].email}">
				</font></small></td>
			<td align="left" bgcolor="#FCF9C3"><small><font face="verdana">
				<input name="txt_emm" size=25 type="text" value="${familyParents[2].email}">
				</font></small></td>
		</tr>


</font>
</table>

	

	<br>
	<A href="mk-proceso-mat.jsp"><form><input type="submit" value="Actualizar datos" onclick="javascript:grabar();"></form></A>

</body>
</form>
</html>
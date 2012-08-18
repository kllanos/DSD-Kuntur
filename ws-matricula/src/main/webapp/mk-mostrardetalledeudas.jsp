<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Parent"%>
<%@page import="pe.edu.upc.dsd.ws.bean.Alumno"%>
<%@page import="java.util.List"%>


<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script> 




<title> Welcome to Markham College </title>


</head>

<body bgcolor= "#FFFFFF">
<%@ include file="mk-menu.jsp" %>
<font face="verdana">


<%
String codigoAlu= request.getParameter("cod");
pageContext.setAttribute("codigoAlu", codigoAlu);
%>
<table border="1" align="center"> 
		
		<tr height="80">
		<td bgcolor="#F3F781"><br><font face="verdana"><small>
		Por favor, acérquese a nuestras oficinas en San Antonio para regularizar el pago de las pensiones pendientes.<br></br>
		</small></font></td></tr>
		
		
</font>
</table>

<br><br>
<table border="0" WIDTH=30% align="center" id="x" >
<tr><td>
<font face="verdana"><small>
<a href="mk-prerrequisitos.jsp" >Retornar</a>
</small></font>
</td></tr>
</table>

<table border="1" WIDTH=30% align="center" id="mtable" > 
		<tr align="center">
			<td colspan="3">
			<font face="verdana">
			<small><b><br>Detalle de los meses</br>
			<br>
			<c:forEach  items="${childrenParents}" var="hijos">  
			<c:if test="${hijos.codigoAlumno == codigoAlu}">
			<font face="verdana" color="green"><b>
			${hijos.apPaterno} ${hijos.apMaterno}, ${hijos.nombre}
			</b></font>
			</c:if>
			</c:forEach>  

			<font face="verdana", color="blue"></b>
			</small>
			</font>
			</th>
		</tr>
		<tr align="center">
			<td>
			<font face="verdana">
			Periodo
			</font>
			</td>
			<td>
			<font face="verdana">
			Monto
			</font>
			</td>
			<td>
			<font face="verdana">
			Estado
			</font>
			</td>
		</tr>
	

	
			<script type="text/javascript">
				$.getJSON("http://localhost:8080/ws-contabilidad/contabilidad/alumno/<%=codigoAlu%>", function(data) {  
					  
					
					$.each(data, function(index, objetoDelListado) {  
					       $.each(objetoDelListado, function(idx, data) {  
					    	   	resultado="<tr><th align='center'><small><font face='verdana'>";  
					    		resultado+=data.periodo;
					    	   	resultado+="</font></small></th><th align='center'><small><font face='verdana', color='green'>";
					    	   	resultado+=data.monto;
					    	   	resultado+="</font></small></th><th><small><font face='verdana'>";
					    	   	resultado+=data.estado.toUpperCase();
					    		resultado+="</font></small></th>";
					    		$("#mtable").append(resultado);
					    	   // $("#spanPX").html(resultado);
					      
						});  
					});  
					});  
			</script>

	</table>	




</body>


</html>
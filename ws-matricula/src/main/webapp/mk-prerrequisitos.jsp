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
			<td colspan="3"><font face="verdana"><small><b><br>Prerrequisitos</br><font face="verdana", color="blue"><!--  Ver detalles --></b></small></font></th>
		</tr>
		<!-- 
		<tr><th align="left"><small><font face="verdana">Aspectos Académicos</font></small></th>
			<th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		</tr>
		 -->
		<tr>
			<th align="left"><small><font face="verdana">Libros y/o multas</font></small></th>
			<th align="center"><small><font face="verdana", color="green">
			<script type="text/javascript">
				$.getJSON("http://localhost:8080/ws-biblioteca/deudas/bibliotecapendiente/${hijos.codigoAlumno}", function(data) {  
					  mflag=0; 
					   $.each(data, function(index, objetoDelListado) {  
					       $.each(objetoDelListado, function(idx, data) {  
					    	   if(mflag==0){
					    	   if(data.estado != "Pendiente")
								{
					    		   $("#spanB${hijos.codigoAlumno}").append("<a href='mk-mostrardetallebiblioteca.jsp?cod=${hijos.codigoAlumno}'>CONFORME</a>"); 
								}
					    	   else{
					    		   $("#spanB${hijos.codigoAlumno}").append("<a href='mk-mostrardetallebiblioteca.jsp?cod=${hijos.codigoAlumno}'>PENDIENTE</a>");   
					    	   }
					    	   }mflag=1;
						      
						});  
					});  
					});  
			</script>
			
			
			
			<span id="spanB${hijos.codigoAlumno}"></span>
			</font></small></th>
		</tr>
		<tr>
			<th align="left"><small><font face="verdana">Deudas de pensiones</font></small></th>
			<th align="center"><small><font face="verdana", color="green">
							
			<script type="text/javascript">
				$.getJSON("http://localhost:8080/ws-contabilidad/contabilidad/alumnopendiente/${hijos.codigoAlumno}", function(data) {  
					  mflag=0;
					   $.each(data, function(index, objetoDelListado) {  
					       $.each(objetoDelListado, function(idx, data) {  
					    	 if(mflag==0){
					    	   if(data.estado == "Cancelado")
								{
					    		   $("#spanP${hijos.codigoAlumno}").append("<a href='mk-mostrardetalledeudas.jsp?cod=${hijos.codigoAlumno}'>CONFORME</a>"); 
								}
					    	   else{
					    		   $("#spanP${hijos.codigoAlumno}").append("<a href='mk-mostrardetalledeudas.jsp?cod=${hijos.codigoAlumno}'>"+data.estado.toUpperCase()+"</a>");   
					    	   }
					    	 }  mflag=1;
						      
						});  
					});  
					});  
			</script>
			<span id="spanP${hijos.codigoAlumno}"></span>
			
			</font></small></th>
		</tr>
		<!-- 
		<tr>
			<th align="left"><small><font face="verdana">Deudas varias</font></small></th>
			<th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		</tr>
		 -->
</table>

<% 
c++;
%>
</c:forEach>  

</body>


</html>
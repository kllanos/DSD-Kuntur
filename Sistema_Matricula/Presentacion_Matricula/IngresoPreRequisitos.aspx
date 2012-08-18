<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoPreRequisitos.aspx.cs" Inherits="Presentacion_Matricula.IngresoPreRequisitos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Markham College</title>
</head>
<body bgcolor= "#FFFFFF">
    <form id="frmPreRequisitos" runat="server">
        <div>
            <font face="verdana"><b>Matrícula > Prerrequisitos</b></font>
            
            <br></br>
            <br></br>

            <table border="1" align="center"> 		
		            <tr height="80">
		            <td bgcolor="#F3F781"><br><font face="verdana"><small>
		            Pulse en "Ver detalle" para informarse de los prerrequisitos pendientes</br><br></br>
		            Por favor, acérquese a nuestras oficinas en San Antonio para resolver los prerrequisitos pendientes.<br></br>
		            </small></font></td></tr>	         
            </table>

		    <br></br>
		
            <table align="center"><tr><td><font face="verdana"><b> <%  Response.Write(Session["apellidos"].ToString()); %>, <%  Response.Write(Session["nombres"].ToString()); %>  </b></front></td></tr></table>

            <br></br>


            <table border="1" WIDTH=30% align="center" > 
		
		            <tr align="center">
			            <td colspan="3"><font face="verdana"><small><b><br>Prerrequisitos</br><font face="verdana", color="blue">Ver detalles</b></small></font></th>
		            </tr>
		
		            <tr>	<th align="left"><td><small><font face="verdana">Aspectos Académicos</font></small></td></th>
			            <th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		            </tr>
		
		            <tr>
			            <th align="left"><td><small><font face="verdana">Libros y/o multas</font></small></td></th>
			            <th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		            </tr>

		            <tr>
			            <th align="left"><td><small><font face="verdana">Deudas de pensiones</font></small></td></th>
			            <th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		            </tr>

		            <tr>
			            <th align="left"><td><small><font face="verdana">Deudas varias</font></small></td></th>
			            <th align="center"><small><font face="verdana", color="green">CONFORME</font></small></th>
		            </tr>           
            </table>	

            <A href="ConsultaDNI.aspx">
            <img src="Images/continuar.png" align="right" style="height: 22px; width: 86px"></A>
        </div>
    </form>
</body>
</html>

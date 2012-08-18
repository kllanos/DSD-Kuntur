<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaDNI.aspx.cs" Inherits="Presentacion_Matricula.ConsultaDNI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Markham College</title>
</head>
<body bgcolor= "#FFFFFF">
    <form id="frmConsultaDNI" runat="server">
    <div>
        <font face="verdana"><h5><b>Matrícula - Proceso de Matrícula</b></h5></font>

        <b><h4><%  Response.Write(Session["apellidos"].ToString()); %>, <%  Response.Write(Session["nombres"].ToString()); %></h4></b>

        <b><h5>DOCUMENTO DE IDENTIDAD DEL ESTUDIANTE</h5></b>

        <br><small>Ingrese el tipo y número de documento de identidad del estudiante.</br></small>       

        <table>
        <tr><td>Ingresar DNI</td><td>
            <asp:TextBox ID="txtDNI" runat="server"></asp:TextBox></td><td>
                <asp:Button ID="btnValidar" runat="server" Text="Validar" 
                    onclick="btnValidar_Click" />
        <tr>
	        <td>
		        <!-- <a href="/buscarPersona.do"><span class="">Consulta DNI</span></a> -->
	            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
	        </td>
        </tr>
        </table>
        <table border="1">
         <tr><td>Datos Reniec</td></tr>
         <tr>
                   	        <td>DNI</td>	 <th><asp:Label ID="lblDNI" runat="server" Text=""></asp:Label></th>  </tr>    
                            <tr><td>Nombres</td>	 <td >
                                <asp:Label ID="lblNombres" runat="server" Text=""></asp:Label></td>    </tr>  
                            <tr><td>Apellido Paterno</td>	<td >
                                <asp:Label ID="lblApellidoPaterno" runat="server" Text=""></asp:Label></td>    </tr>  
                            <tr> <td>Apellido Materno</td><td >
                                <asp:Label ID="lblApellidoMaterno" runat="server" Text=""></asp:Label></td>    </tr>  
                            <tr> <td>Fecha de Nacimiento</td><td >
                                <asp:Label ID="lblFechaNacimiento" runat="server" Text=""></asp:Label></td>    </tr>  
                              	
         </table>
         <br/>
        <table border="1" WIDTH=35% height=5% align="left" > 
		
		        <tr>	<th align="center"><td><small><font face="verdana"><form><input type="submit" value="Aceptar"></form></font></small></td></th>
			        <th align="left"><small><font face="verdana">El tipo y número de documento es correcto</font></small></th>
		        </tr>
		
		        <tr>	<th align="center"><td><small><font face="verdana"><form><input type="submit" value="Cambiar"></form></font></small></td></th>
			        <th align="left"><small><font face="verdana">Grabar el tipo y número de documento ingresado</font></small></th>
		        </tr>
        </table>
		
    </div>
    </form>
</body>
</html>

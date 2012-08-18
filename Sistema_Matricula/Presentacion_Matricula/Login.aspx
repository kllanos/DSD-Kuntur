<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Presentacion_Matricula.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Markham College</title>
    <style type="text/css">
        .style1
        {
            height: 35px;
        }
    </style>
</head>
<body background="Images/fondo.jpg" bgcolor= "#FFFFFF">
    <form id="frmLogin" runat="server">
    <div>
        <table border="0" align="center" bgcolor="white" width="350" > 
		    <tr height="14%">
			    <td align="center"><img src="Images/logo.jpg" width="280" height="46"></td>
		    </tr>
		    <tr height="10%" >
			    <td bgcolor="#F5D0A9"><font face="verdana"><b><h4>Matrícula en Línea 2012</h4></b></td></font>
		    </tr>
		    <tr height="2%">
			    <td bgcolor="#B43104"></td>
		    </tr>
		    <tr height="11%">
			    <td align="center"><font color="blue"><font face="verdana"><h5>English Versión -  Versión en Español</font></h5></td>
		    </tr>
		    <tr height="12%">
			    <td><small><font face="verdana">Por favor, ingrese su usurario y contraseña.</font></small></td>
		    </tr>
		    <tr>
			    <td class="style1"><font face="verdana"><b><h4>Usuario:</h4>
                    </b></font>
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvuUsuario" runat="server" 
                        ControlToValidate="txtUsuario" Display="Dynamic" 
                        ErrorMessage="* Ingrese Usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
		    </tr>		
		    <tr>
			    <td><font face="verdana"><b><h4>Contraseña:</h4></b></font>		
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvuClave" runat="server" 
                        ControlToValidate="txtPassword" Display="Dynamic" 
                        ErrorMessage="* Ingrese Clave" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
		    </tr>		
		    <tr>
			    <td><asp:ImageButton ID="btnIngresar" runat="server" Height="28px" 
                        ImageUrl="~/Images/ingresar.png" onclick="btnIngresar_Click" Width="86px" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </td>
		    </tr>
        </table>
    </div>
    </form>
</body>
</html>

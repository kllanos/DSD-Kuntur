<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActualizarAlumno.aspx.cs" Inherits="Presentacion_Matricula.ActualizarAlumno" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 72%;
        }
        .style2
        {
            height: 37px;
        }
        .style5
        {
            height: 23px;
        }
        .style6
        {
            height: 23px;
            width: 91px;
        }
        .style7
        {
            width: 91px;
        }
        .style8
        {
            height: 18px;
            width: 91px;
        }
        .style9
        {
            height: 18px;
        }
        .style10
        {
            width: 91px;
            height: 50px;
        }
        .style11
        {
            height: 50px;
        }
        .style12
        {
            height: 23px;
            width: 12px;
        }
        .style13
        {
            width: 12px;
        }
        .style14
        {
            height: 18px;
            width: 12px;
        }
        .style15
        {
            height: 50px;
            width: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Verdana" Font-Size="Large" ForeColor="#663300" 
                        Text="Actualizar Alumno"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Text="DNI"></asp:Label>
                </td>
                <td class="style12">
                    <asp:Label ID="lblDNI" runat="server" Font-Bold="True" Font-Italic="False"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label3" runat="server" Text="Nombres"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="txtNombres" runat="server" Width="390px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNombres" runat="server" 
                        ControlToValidate="txtNombres" Display="Dynamic" 
                        ErrorMessage="* Ingrese Nombres" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label4" runat="server" Text="Apellidos"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtApellidos" runat="server" Width="390px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="rfvApellidos" runat="server" 
                        ControlToValidate="txtApellidos" Display="Dynamic" 
                        ErrorMessage="* Ingrese Apellidos" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" 
                        onclick="btnActualizar_Click" />
                </td>
                <td class="style15">
                    <asp:Button ID="btnCancelar" runat="server" Text="Regresar" 
                        onclick="btnCancelar_Click" />
                </td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

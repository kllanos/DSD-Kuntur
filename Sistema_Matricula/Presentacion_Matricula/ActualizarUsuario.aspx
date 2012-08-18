<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActualizarUsuario.aspx.cs" Inherits="Presentacion_Matricula.ActualizarUsuario" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 70%;
        }
        .style2
        {
            height: 37px;
        }
        .style6
        {
            height: 23px;
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
        .style17
        {
            width: 91px;
            height: 26px;
        }
        .style18
        {
            height: 26px;
        }
        .style20
        {
            height: 23px;
            }
        .style22
        {
            height: 50px;
            width: 175px;
        }
        .style25
        {
            height: 50px;
            width: 119px;
        }
        .style30
        {
            height: 9px;
        }
        .style43
        {
            height: 31px;
        }
        .style46
        {
            height: 31px;
        }
        .style47
        {
            height: 29px;
        }
        .style48
        {
            height: 29px;
            width: 175px;
        }
        .style49
        {
            height: 29px;
            width: 119px;
        }
        .style50
        {
            height: 29px;
            width: 98px;
        }
        .style51
        {
            height: 37px;
            width: 482px;
        }
        .style52
        {
            height: 23px;
            width: 482px;
        }
        .style53
        {
            height: 26px;
            width: 482px;
        }
        .style54
        {
            height: 18px;
            width: 482px;
        }
        .style55
        {
            height: 9px;
            width: 482px;
        }
        .style56
        {
            height: 31px;
            width: 482px;
        }
        .style57
        {
            height: 29px;
            width: 482px;
        }
        .style58
        {
            height: 50px;
            width: 482px;
        }
        .style59
        {
            width: 98px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table class="style1" border="0">
            <tr>
                <td class="style2" colspan="4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Verdana" Font-Size="Large" ForeColor="#663300" 
                        Text="Actualizar Usuario"></asp:Label>
                </td>
                <td class="style51">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Text="DNI"></asp:Label>
                </td>
                <td class="style20" colspan="3">
                    <asp:Label ID="lblDNI" runat="server" Font-Bold="True" Font-Italic="False"></asp:Label>
                </td>
                <td class="style52">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label3" runat="server" Text="Nombres"></asp:Label>
                </td>
                <td class="style18" colspan="3">
                    <asp:TextBox ID="txtNombres" runat="server" Width="448px"></asp:TextBox>
                </td>
                <td class="style53">
                    <asp:RequiredFieldValidator ID="rfvNombres" runat="server" 
                        ControlToValidate="txtNombres" Display="Dynamic" ErrorMessage="Ingrese Nombres" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label4" runat="server" Text="Apellidos"></asp:Label>
                </td>
                <td class="style9" colspan="3">
                    <asp:TextBox ID="txtApellidos" runat="server" Width="448px"></asp:TextBox>
                </td>
                <td class="style54">
                    <asp:RequiredFieldValidator ID="rfvApellidos" runat="server" 
                        ControlToValidate="txtApellidos" Display="Dynamic" 
                        ErrorMessage="Ingrese Apellidos" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style30" align="left" colspan="4">
                    _____________________________________________________________________</td>
                <td class="style55" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style46" align="left">
                    <asp:Label ID="Label7" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td class="style43">
                    <asp:TextBox ID="txtUsuario" runat="server" Width="152px"></asp:TextBox>
                </td>
                <td class="style43" colspan="2">
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" 
                        ControlToValidate="txtUsuario" Display="Dynamic" ErrorMessage="Ingrese Usuario" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="style56">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style47" align="left">
                    <asp:Label ID="Label5" runat="server" Text="Clave"></asp:Label>
                </td>
                <td class="style48">
                    <asp:TextBox ID="txtClave" runat="server" Width="152px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfvClave" runat="server" 
                        ControlToValidate="txtClave" Display="Dynamic" ErrorMessage="Ingrese Clave" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvClave" runat="server" 
                        ControlToCompare="txtRepetirClave" ControlToValidate="txtClave" 
                        Display="Dynamic" ErrorMessage="Clave no coincide" ForeColor="Red">*</asp:CompareValidator>
                </td>
                <td class="style49">
                    <asp:Label ID="Label6" runat="server" Text="Repetir Clave"></asp:Label>
                </td>
                <td class="style50">
                    <asp:TextBox ID="txtRepetirClave" runat="server" Width="152px"></asp:TextBox>
                </td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" 
                        onclick="btnActualizar_Click" />
                </td>
                <td class="style22">
                    <asp:Button ID="btnCancelar" runat="server" Text="Regresar" 
                        onclick="btnCancelar_Click" />
                </td>
                <td class="style25">
                    &nbsp;</td>
                <td class="style59">
                    &nbsp;</td>
                <td class="style58">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:ValidationSummary ID="summaryUsuario" runat="server" ForeColor="Red" />
    </form>
</body>
</html>

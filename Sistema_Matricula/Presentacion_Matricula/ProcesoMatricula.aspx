<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProcesoMatricula.aspx.cs" Inherits="Presentacion_Matricula.ProcesoMatricula" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Markham College</title>
</head>
<body bgcolor= "#FFFFFF">
    <form id="frmProcesoMatricula" runat="server">
    <div>
        <font face="verdana">
        <img src="Images/logo.jpg" width="280" height="45"><b>MATRICULA EN LINEA 2012</b>

        <br></br>
        <br></br>


        <table border="0"  bgcolor="white" height="40"> 
		
		        <tr bgcolor="#F8ECE0"  align="center">
			        <th width="300"><font color="#DBA901"><small>AYUDA</font></small></th>
			        <th width="300"><font color="#DBA901"><small><a href="IngresoPreRequisitos.aspx">PRERREQUISITOS</a></small></font></th>
			        <th width="300"><font color="#DBA901"><small>DOCUMENTOS</font></small></th>
			        <th width="300"><font color="#DBA901"><small>MATRICULAR</font></small></th>
			        <th width="300"><font color="#DBA901"><small><a href="Login.aspx">SALIR</a></font></small></th>
		        </tr>

		        <tr><td bgcolor="#DBA901"  align="center"colspan="5" width="100" height="5">
		        </td></tr>

        </table>

        <br>
		        <b><a href="ProcesoMatricula.aspx">Matrícula</a>> Proceso de Matrícula</b>
		
        <br></br>

        <table border="1" align="left" height="50" width="1300"> 
		
		        <tr>
		        <td bgcolor="#F3F781"><br><font face="verdana"><small>
		        Todos los padres que en este año 2012 necesiten hacer el uso del estacionamiento interno de San Antonio, deben recoger su tarjeta de la ficina San Antonio, de 8:00 a.m. a 3:00 p.m.
		        <br>Por favor, acérquese a nuestras oficinas en San Antonio para resolver los prerrequisitos pendientes.<br></br>

		        Para proceder con la matrícula deberá usted confirmar o actualizar su información personal utilizando el enlace siguiente.<br></br>
		        </small></font></td></tr>

        </table>
		
        <br></br>
        <br></br>
        <br></br>
        <br></br>
		        <b><h5>PASO: 1 ACTUALIZACIÓN DE DATOS</h5></b>



        <table border="1"  bgcolor="white" height="30"> 
		
		        <tr align="center">
			        <th width="300"><small>ACTUALIZACION DE DATOS</small></th>
			        <th width="200"><small><font color="green">CONFORME</font></small></th>
			        <th width="250"><small><small><font color="blue"><a href="ActualizarUsuario.aspx">Presione aquí para actualizar</a></font></small></small></th>
		        </tr>

        </table>
        <br></br>
		        <b><h5>PASO: 2 MATRICULAR ESTUDIANTE</h5></b>
	

        

        
        <asp:GridView ID="gvAlumnos" runat="server" 
            Height="16px" Width="771px" AutoGenerateColumns="False" 
            BorderStyle="Double" BorderWidth="4px" 
            onselectedindexchanged="gvAlumnos_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="DNI" HeaderText="DNI" />
                <asp:TemplateField HeaderText="Nombre de Estudiante">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.NombreEstudiante") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Matricula">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" ForeColor="#008200" Text="CON MATRICULA"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField EditText="Actualizar" 
                    SelectText="Presione aquí para actualizar" ShowSelectButton="True">
                <ItemStyle Font-Bold="True" Font-Italic="False" Font-Underline="True" />
                </asp:CommandField>
            </Columns>
            <HeaderStyle BackColor="#F7DB84" Font-Size="Smaller" />
            <RowStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
        </asp:GridView>
        </br>	
        <br></br>
	
        </font>

        <br></br>
        <br></br>

       
    </div>
    </form>
</body>
</html>

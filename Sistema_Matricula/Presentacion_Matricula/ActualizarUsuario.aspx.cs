using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinnesLayer;
using EntitiesLayer;

namespace Presentacion_Matricula
{
    public partial class ActualizarUsuario : System.Web.UI.Page
    {
        UsuarioBL UsuarioBL = new UsuarioBL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string dni = Session["dni"].ToString();

                List<UsuarioBE> lista = UsuarioBL.ObtenerUsuario(dni);

                lblDNI.Text = dni;

                foreach(var list in lista){
                    txtNombres.Text = list.Nombres;
                    txtApellidos.Text = list.Apellidos;
                    txtUsuario.Text = list.Usuario;
                    txtClave.Text = list.Clave;
                    txtRepetirClave.Text = list.Clave;
                }

            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            UsuarioBE objUsuario = new UsuarioBE();

            objUsuario.Dni = lblDNI.Text;
            objUsuario.Nombres = txtNombres.Text;
            objUsuario.Apellidos = txtApellidos.Text;
            objUsuario.Usuario = txtUsuario.Text;
            objUsuario.Clave = txtClave.Text;

            UsuarioBL.ActualizarUsuario(objUsuario);

            Session["nombres"] = txtNombres.Text;
            Session["apellidos"] = txtApellidos.Text;

            string script = @"<script type='text/javascript'> alert('Se actualizó correctamente');</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);          
            
            //Response.Redirect("ProcesoMatricula.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProcesoMatricula.aspx");
        }
    }
}
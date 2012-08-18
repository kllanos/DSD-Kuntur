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
    public partial class ActualizarAlumno : System.Web.UI.Page
    {
        AlumnoBL AlumnoBL = new AlumnoBL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string dni=Session["dniHijo"].ToString();

                List<AlumnoBE> lista = AlumnoBL.ObtenerHijo(dni);
                
                lblDNI.Text = dni;

                foreach (var list in lista) {
                    txtNombres.Text = list.Nombres;
                    txtApellidos.Text = list.Apellidos;
                }                

            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProcesoMatricula.aspx");
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            AlumnoBE objAlumno = new AlumnoBE();

            objAlumno.Dni = lblDNI.Text;
            objAlumno.Nombres = txtNombres.Text;
            objAlumno.Apellidos = txtApellidos.Text;

            AlumnoBL.ActualizarHijo(objAlumno);

            string script = @"<script type='text/javascript'> alert('Se actualizó correctamente');</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);            

            //Response.Redirect("ProcesoMatricula.aspx");
        }
    }
}
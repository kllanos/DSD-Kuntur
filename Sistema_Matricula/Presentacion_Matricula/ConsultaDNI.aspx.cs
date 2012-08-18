using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion_Matricula
{
    public partial class ConsultaDNI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnValidar_Click(object sender, EventArgs e)
        {
            ConsultaReniec.PersonaServiceImplService persona = new ConsultaReniec.PersonaServiceImplService();

            if (txtDNI.Text == "")
                lblError.Text = "* Ingresar datos";
            else if(persona.obtenerPersonaDNI(txtDNI.Text) == null)
                lblError.Text = "* Datos no encontrados";
            else {
                lblError.Text = "";
                lblDNI.Text = persona.obtenerPersonaDNI(txtDNI.Text).dni;
                lblNombres.Text = persona.obtenerPersonaDNI(txtDNI.Text).nombres;
                lblApellidoPaterno.Text = persona.obtenerPersonaDNI(txtDNI.Text).apellidoPaterno;
                lblApellidoMaterno.Text = persona.obtenerPersonaDNI(txtDNI.Text).apellidoMaterno;
                lblFechaNacimiento.Text = persona.obtenerPersonaDNI(txtDNI.Text).fechaNacimiento;
            }
            
        }
    }
}
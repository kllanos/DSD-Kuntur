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
    public partial class Login : System.Web.UI.Page
    {
        UsuarioBL UsuarioBL = new UsuarioBL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, ImageClickEventArgs e)
        {
            List<UsuarioBE> lista = UsuarioBL.Login(txtUsuario.Text, txtPassword.Text);

            if (lista.Count > 0)
            {
                foreach (var acn in lista)
                {
                    Session["dni"] = acn.Dni;
                    Session["nombres"] = acn.Nombres;
                    Session["apellidos"] = acn.Apellidos;                    
                }
                Response.Redirect("ProcesoMatricula.aspx");

            }
            else{
                lblError.Text = "* Error de Datos, Intente nuevamente";
            }

        }
    }
}
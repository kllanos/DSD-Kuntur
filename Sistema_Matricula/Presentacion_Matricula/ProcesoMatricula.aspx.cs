using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinnesLayer;
using EntitiesLayer;
using System.Data;

namespace Presentacion_Matricula
{
    public partial class ProcesoMatricula : System.Web.UI.Page
    {
        AlumnoBL AlumnoBL = new AlumnoBL();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string dniPadre = Session["dni"].ToString();

                gvAlumnos.DataSource = AlumnoBL.ConsultarAlumnoXPadre(dniPadre);
                gvAlumnos.DataBind();
            }
            
        }

        protected void gvAlumnos_SelectedIndexChanged(object sender, EventArgs e)
        {
            int indice = gvAlumnos.SelectedIndex;

            string dni = (gvAlumnos.Rows[indice].Cells[0].Text).ToString();

             Session["dniHijo"] = dni;

             Response.Redirect("ActualizarAlumno.aspx");
        }

       
    }
}
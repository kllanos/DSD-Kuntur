using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EntitiesLayer;
using DataLayer;
using System.Data;

namespace BusinnesLayer
{
    public class AlumnoBL
    {
        public DataTable ConsultarAlumnoXPadre(string dniPadre)
        {
            AlumnoDAO dao = new AlumnoDAO();
            return dao.ConsultarAlumnosXPadre(dniPadre);
        }

        public List<AlumnoBE> ObtenerHijo(string dni)
        {
            AlumnoDAO dao = new AlumnoDAO();
            return dao.ObtenerHijo(dni);
        }

        public int ActualizarHijo(AlumnoBE objAlumno)
        {
            AlumnoDAO dao = new AlumnoDAO();
            return dao.ActualizarHijo(objAlumno);
        }
    }
}

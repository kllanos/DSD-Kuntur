using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EntitiesLayer;
using DataLayer;

namespace BusinnesLayer
{
    public class UsuarioBL
    {
        public List<UsuarioBE> Login(string usuario, string clave)
        {
            UsuarioDAO dao = new UsuarioDAO();
            return dao.Login(usuario, clave);
        }

        public List<UsuarioBE> ObtenerUsuario(string dni)
        {
            UsuarioDAO dao = new UsuarioDAO();
            return dao.ObtenerUsuario(dni);
        }

        public int ActualizarUsuario(UsuarioBE objUsuario) {
            UsuarioDAO dao = new UsuarioDAO();
            return dao.ActualizarUsuario(objUsuario);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EntitiesLayer;
using System.Data.SqlClient;
using System.Data;

namespace DataLayer
{
    public class UsuarioDAO
    {
        private ConnectionDAO cn = new ConnectionDAO();

        public List<UsuarioBE> Login(string usuario, string clave) {

            List<UsuarioBE> list = new List<UsuarioBE>();

            using (SqlCommand cmd = new SqlCommand("USP_INGRESAR_USUARIO", cn.p_cn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@USUARIO", SqlDbType.VarChar, 100).Value = usuario;
                cmd.Parameters.Add("@CLAVE", SqlDbType.VarChar, 100).Value = clave;
               
                try
                {
                    cn.p_cn.Open();

                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        UsuarioBE p = new UsuarioBE();
                        p.Dni = Convert.ToString(dr[0]);
                        p.Nombres = Convert.ToString(dr[1]);
                        p.Apellidos = Convert.ToString(dr[2]);                        
                        list.Add(p);
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
                finally
                {
                    cn.p_cn.Close();
                }
            }

            return list;                

        }

        public List<UsuarioBE> ObtenerUsuario(string dni)
        {

            List<UsuarioBE> list = new List<UsuarioBE>();

            using (SqlCommand cmd = new SqlCommand("USP_OBTENER_USUARIO", cn.p_cn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@DNI", SqlDbType.VarChar, 8).Value = dni;

                try
                {
                    cn.p_cn.Open();

                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        UsuarioBE p = new UsuarioBE();
                        p.Nombres = Convert.ToString(dr[0]);
                        p.Apellidos = Convert.ToString(dr[1]);
                        p.Usuario = Convert.ToString(dr[2]);
                        p.Clave = Convert.ToString(dr[3]);
                        list.Add(p);
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
                finally
                {
                    cn.p_cn.Close();
                }
            }

            return list;

        }

        public int ActualizarUsuario(UsuarioBE objUsuario)
        {

            int resultado = 0;

            try
            {
                cn.p_cn.Open();

                SqlCommand cmd = new SqlCommand("USP_ACTUALIZAR_USUARIO", cn.p_cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@DNI", SqlDbType.VarChar, 8).Value = objUsuario.Dni;
                cmd.Parameters.Add("@NOMBRES", SqlDbType.VarChar, 200).Value = objUsuario.Nombres;
                cmd.Parameters.Add("@APELLIDOS", SqlDbType.VarChar, 200).Value = objUsuario.Apellidos;
                cmd.Parameters.Add("@USUARIO", SqlDbType.VarChar, 100).Value = objUsuario.Usuario;
                cmd.Parameters.Add("@CLAVE", SqlDbType.VarChar, 100).Value = objUsuario.Clave;
                resultado = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cn.p_cn.Close();
            }

            return resultado;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using EntitiesLayer;
using System.Data;


namespace DataLayer
{
    public class AlumnoDAO
    {
        private ConnectionDAO cn = new ConnectionDAO();

        public DataTable ConsultarAlumnosXPadre(string dniPadre)
        {           
            SqlDataAdapter da = new SqlDataAdapter();            
            DataTable dt = new DataTable();
            
            using (SqlCommand cmd = new SqlCommand("USP_LISTAR_HIJOS", cn.p_cn))
            {
                try
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@DNI", SqlDbType.VarChar, 8).Value = dniPadre;
                    da.SelectCommand = cmd;
                    da.Fill(dt);
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }                                          
            }
            return dt;
        }               

        public List<AlumnoBE> ObtenerHijo(string dni)
        {

            List<AlumnoBE> list = new List<AlumnoBE>();

            using (SqlCommand cmd = new SqlCommand("USP_OBTENER_HIJO", cn.p_cn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@DNI", SqlDbType.VarChar, 8).Value = dni;               

                try
                {
                    cn.p_cn.Open();

                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        AlumnoBE p = new AlumnoBE();                        
                        p.Nombres = Convert.ToString(dr[0]);
                        p.Apellidos = Convert.ToString(dr[1]);                     
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

        public int ActualizarHijo(AlumnoBE objHijo) {

            int resultado = 0;

            try {
                cn.p_cn.Open();

                SqlCommand cmd = new SqlCommand("USP_ACTUALIZAR_HIJO", cn.p_cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@DNI", SqlDbType.VarChar, 8).Value = objHijo.Dni;
                cmd.Parameters.Add("@NOMBRES", SqlDbType.VarChar, 200).Value = objHijo.Nombres;
                cmd.Parameters.Add("@APELLIDOS", SqlDbType.VarChar, 200).Value = objHijo.Apellidos;
                resultado = cmd.ExecuteNonQuery();
            }
            catch(Exception ex){
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

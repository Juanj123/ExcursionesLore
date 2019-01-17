using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Pojos;
using MySql.Data.MySqlClient;
using MySql.Web;
using System.Data;

namespace Capa_Datos
{
    public class DaoVideo
    {
        cone conec = new cone();

        public List<PojoVideo> obtenerVideo()
        {

            try
            {

                List<PojoVideo> concep = new List<PojoVideo>();
                PojoVideo pojoAmbu;
                MySqlCommand cm = new MySqlCommand();
                MySqlDataReader dr;
                conec.conexion();
                string sql = " select * from video";
                cm.CommandText = sql;
                cm.CommandType = CommandType.Text;
                cm.Connection = conec.conectar;
                dr = cm.ExecuteReader();

                while (dr.Read())
                {
                    pojoAmbu = new PojoVideo();
                    pojoAmbu.IdVideo = dr.GetInt32("idVideo");
                    pojoAmbu.IdUsuario = dr.GetInt32("idUsuario");
                    pojoAmbu.Nombre = dr.GetString("nombre");
                    pojoAmbu.Estado = dr.GetString("estado");
                    pojoAmbu.Url = dr.GetString("url");
                    concep.Add(pojoAmbu);
                }
                return concep;
            }
            catch (Exception exc)
            {
                return null;
            }
            finally
            {
                conec.conectar.Close();
            }
        }
    }
}

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
                string sql = " select * from principalvideo where idVideo=12 and estado like 'Activo'";
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

        public List<pojoMostrarVideo> obtenerVideos()
        {

            try
            {

                List<pojoMostrarVideo> concep = new List<pojoMostrarVideo>();
                pojoMostrarVideo pojoAmbu;
                MySqlCommand cm = new MySqlCommand();
                MySqlDataReader dr;
                conec.conexion();
                string sql = " select nombre, estado, url from principalvideo";
                cm.CommandText = sql;
                cm.CommandType = CommandType.Text;
                cm.Connection = conec.conectar;
                dr = cm.ExecuteReader();

                while (dr.Read())
                {
                    pojoAmbu = new pojoMostrarVideo();
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

        public string insertar(PojoVideo pojoVideo)
        {
            MySqlCommand cmd = new MySqlCommand();
            conec.conexion();
            cmd.Parameters.AddWithValue("@idUsuario", pojoVideo.IdUsuario);
            cmd.Parameters.AddWithValue("@nombre", pojoVideo.Nombre);
            cmd.Parameters.AddWithValue("@estado", pojoVideo.Estado);
            cmd.Parameters.AddWithValue("@url", pojoVideo.Url);
            string consul = "insert into principalVideo(idVideo, idUsuario, nombre, estado,url)VALUES(null,@idUsuario,@nombre,@estado,@url)";
            cmd.CommandText = consul;
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conec.conectar;
            cmd.ExecuteNonQuery();
            conec.conectar.Close();
            return "Guardado";

        }

    }
}

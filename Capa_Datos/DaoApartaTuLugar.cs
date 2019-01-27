using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Pojos;
using System.Data;
using MySql.Data.MySqlClient;

namespace Capa_Datos
{
    public class DaoApartaTuLugar
    {
        cone conect = new cone();
        public void registrarAsientos(PojoApartaTuLugar objcrear)
        {
            conect.conexion();
            string sql;
            MySqlCommand cm;
            cm = new MySqlCommand();
            cm.Parameters.AddWithValue("@IdUsuario", objcrear.IdUsuario);
            cm.Parameters.AddWithValue("@IdViaje", objcrear.IdViaje);
            cm.Parameters.AddWithValue("@IdAutobus", objcrear.IdAutobus);
            cm.Parameters.AddWithValue("@IdReservacion", objcrear.IdReservacion);
            cm.Parameters.AddWithValue("@N_Asiento", objcrear.N_Asiento);
            cm.Parameters.AddWithValue("@Nota", objcrear.Nota);
            sql = "insert into asientosselect (idUsuario, idAutobus, n_asientos) value(@IdUsuario, @IdAutobus, @N_Asiento);";
            cm.CommandText = sql;
            cm.CommandType = CommandType.Text;
            cm.Connection = conect.conectar ;
            cm.ExecuteNonQuery();
            conect.conectar.Close();
        }
        public void registrarReservacion(PojoApartaTuLugar objcrear)
        {
            conect.conexion();
            string sql;
            MySqlCommand cm;
            cm = new MySqlCommand();
            cm.Parameters.AddWithValue("@IdUsuario", objcrear.IdUsuario);
            cm.Parameters.AddWithValue("@IdViaje", objcrear.IdViaje);
            cm.Parameters.AddWithValue("@IdAutobus", objcrear.IdAutobus);
            cm.Parameters.AddWithValue("@IdReservacion", objcrear.IdReservacion);
            cm.Parameters.AddWithValue("@N_Asiento", objcrear.N_Asiento);
            cm.Parameters.AddWithValue("@Nota", objcrear.Nota);
            sql = "insert into asientosselect (idUsuario, idAutobus, idViaje, Nota) value(@IdUsuario, @IdAutobus,@IdViaje, @Nota);";
            cm.CommandText = sql;
            cm.CommandType = CommandType.Text;
            cm.Connection = conect.conectar;
            cm.ExecuteNonQuery();
            conect.conectar.Close();
        }
    }
}

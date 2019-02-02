﻿using System;
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
            sql = "insert into asientosselect(idUsuario, idAutobus, idViaje,n_asientos) value(@IdUsuario, @IdAutobus,@IdViaje, @N_Asiento);";
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
            sql = "insert into reservacion(idAutobus, idViaje) value(@IdAutobus, @IdViaje);";
            cm.CommandText = sql;
            cm.CommandType = CommandType.Text;
            cm.Connection = conect.conectar;
            cm.ExecuteNonQuery();
            conect.conectar.Close();
        }

        public void registrarReservacionUsuario(PojoApartaTuLugar objcrear)
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
            sql = "insert into reservacionusuario value(@IdUsuario, @IdReservacion);";
            cm.CommandText = sql;
            cm.CommandType = CommandType.Text;
            cm.Connection = conect.conectar;
            cm.ExecuteNonQuery();
            conect.conectar.Close();
        }

        public List<asientos> getAsientosOcupados(int id)
        {
            conect.conexion();
            List<asientos> lstUsuarios = new List<asientos>();
            string sql;
            MySqlCommand cm = new MySqlCommand();
            MySqlDataReader dr;
            sql = "select distinct s.n_asientos as Seleccionados from asientosselect s join viajes v where (s.idViaje = v.idViaje and s.idViaje = "+id+"); ";
            cm.CommandText = sql;
            cm.CommandType = CommandType.Text;
            cm.Connection = conect.conectar;
            dr = cm.ExecuteReader();
            while (dr.Read())
            {
                asientos objUs = new asientos();
                objUs.N_Asiento = dr.GetInt32("Seleccionados");
                lstUsuarios.Add(objUs);
            }
            conect.conectar.Close();
            return lstUsuarios;
        }

        public List<PojoApartaTuLugar> getDatosViaje(int id)
        {
            conect.conexion();
            List<PojoApartaTuLugar> lstUsuarios = new List<PojoApartaTuLugar>();
            string sql;
            MySqlCommand cm = new MySqlCommand();
            MySqlDataReader dr;
            sql = "select img, destino, costo_adulto, costo_niño as costoNino from viajes where idViaje= " + id + "; ";
            cm.CommandText = sql;
            cm.CommandType = CommandType.Text;
            cm.Connection = conect.conectar;
            dr = cm.ExecuteReader();
            while (dr.Read())
            {
                PojoApartaTuLugar objUs = new PojoApartaTuLugar();
                objUs.Img = dr.GetString("img");
                objUs.Destino = dr.GetString("destino");
                objUs.Costo_adulto = dr.GetDouble("costo_adulto");
                objUs.CostoNino = dr.GetDouble("costoNino");
                lstUsuarios.Add(objUs);
            }
            conect.conectar.Close();
            return lstUsuarios;
        }

        public int getTipoAutobus(int id)
        {
            
            int idAutobus = 0;
            conect.conexion();
            string sql;
            MySqlCommand cm = new MySqlCommand();
            MySqlDataReader dr;
            sql = "select idAutobus from viajes where idViaje= '" + id + "';";
            cm.CommandText = sql;
            cm.CommandType = CommandType.Text;
            cm.Connection = conect.conectar;
            dr = cm.ExecuteReader();
            while (dr.Read())
            {
                PojoApartaTuLugar objUs = new PojoApartaTuLugar();
                idAutobus = objUs.IdAutobus = dr.GetInt32("idAutobus");
            }
            conect.conectar.Close();
            return idAutobus;
        }

        public int getEdad(int id)
        {

            int idAutobus = 0;
            conect.conexion();
            string sql;
            MySqlCommand cm = new MySqlCommand();
            MySqlDataReader dr;
            sql = "select edad from usuarios where idUsuario = '" + id + "';";
            cm.CommandText = sql;
            cm.CommandType = CommandType.Text;
            cm.Connection = conect.conectar;
            dr = cm.ExecuteReader();
            while (dr.Read())
            {
                PojoApartaTuLugar objUs = new PojoApartaTuLugar();
                idAutobus = objUs.IdAutobus = dr.GetInt32("edad");
            }
            conect.conectar.Close();
            return idAutobus;
        }

    }
}

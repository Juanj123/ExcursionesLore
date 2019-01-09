using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using MySql.Web;
using System.Data;

namespace Capa_Datos
{
    class Conexion
    {
        public MySqlConnection conectar = new MySqlConnection();
        public void conexion()
        {
            try
            {
                conectar.ConnectionString = "server='" + ConfiguracionServidor.G_SERVER + "'; port='" + ConfiguracionServidor.G_PUERTO + "' ; Database='" + ConfiguracionServidor.G_DATABASE + "'; user id='" + ConfiguracionServidor.G_USER_ID + "';   password='" + ConfiguracionServidor.G_USER_PWD + "';  pooling=false";
                conectar.Open();
            }
            catch(Exception ExceptionErr)
            {
                throw new System.Exception(ExceptionErr.Message, ExceptionErr.InnerException);
            }
        }
    }
}

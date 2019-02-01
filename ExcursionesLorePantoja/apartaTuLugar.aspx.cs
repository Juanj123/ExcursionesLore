
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using Newtonsoft.Json;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Web.Services;
using Capa_Datos;
using Capa_Pojos;
namespace ExcursionesLorePantoja
{

    public partial class apartaTuLugar : System.Web.UI.Page
    {
        List<int> lugares = new List<int>();
        List<int> lugares19 = new List<int>();
        string valores, valores19;
        int id = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            DaoApartaTuLugar objDaoAparta = new DaoApartaTuLugar();
            var lista = objDaoAparta.getAsientosOcupados(id);

            var Json = JsonConvert.SerializeObject(lista);
            Response.Cookies["asientosAutobus"].Value = Json;
        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            int idUsuario = 100;
            int idAutobus = 10;
            int idViaje = 1;
            valores = Request.Cookies["Asientos"].Value;
            string[] asientos = valores.Split(',');
            foreach (string word in asientos)
            {
                if (Regex.IsMatch(word, "(48)"))
                {
                    lugares.Add(48);
                }
                if (Regex.IsMatch(word, "(47)"))
                {
                    lugares.Add(47);
                }
                if (Regex.IsMatch(word, "(46)"))
                {
                    lugares.Add(46);
                }
                if (Regex.IsMatch(word, "(45)"))
                {
                    lugares.Add(45);
                }
                if (Regex.IsMatch(word, "(44)"))
                {
                    lugares.Add(44);
                }
                if (Regex.IsMatch(word, "(43)"))
                {
                    lugares.Add(43);
                }
                if (Regex.IsMatch(word, "(42)"))
                {
                    lugares.Add(42);
                }
                if (Regex.IsMatch(word, "(41)"))
                {
                    lugares.Add(41);
                }
                if (Regex.IsMatch(word, "(40)"))
                {
                    lugares.Add(40);
                }
                if (Regex.IsMatch(word, "(39)"))
                {
                    lugares.Add(39);
                }
                if (Regex.IsMatch(word, "(38)"))
                {
                    lugares.Add(38);
                }
                if (Regex.IsMatch(word, "(37)"))
                {
                    lugares.Add(37);
                }
                if (Regex.IsMatch(word, "(36)"))
                {
                    lugares.Add(36);
                }
                if (Regex.IsMatch(word, "(35)"))
                {
                    lugares.Add(35);
                }
                if (Regex.IsMatch(word, "(34)"))
                {
                    lugares.Add(34);
                }
                if (Regex.IsMatch(word, "(33)"))
                {
                    lugares.Add(33);
                }
                if (Regex.IsMatch(word, "(32)"))
                {
                    lugares.Add(32);
                }
                if (Regex.IsMatch(word, "(31)"))
                {
                    lugares.Add(31);
                }
                if (Regex.IsMatch(word, "(30)"))
                {
                    lugares.Add(30);
                }
                if (Regex.IsMatch(word, "(29)"))
                {
                    lugares.Add(29);
                }
                if (Regex.IsMatch(word, "(28)"))
                {
                    lugares.Add(28);
                }
                if (Regex.IsMatch(word, "(27)"))
                {
                    lugares.Add(27);
                }
                if (Regex.IsMatch(word, "(26)"))
                {
                    lugares.Add(26);
                }
                if (Regex.IsMatch(word, "(25)"))
                {
                    lugares.Add(25);
                }
                if (Regex.IsMatch(word, "(24)"))
                {
                    lugares.Add(24);
                }
                if (Regex.IsMatch(word, "(23)"))
                {
                    lugares.Add(23);
                }
                if (Regex.IsMatch(word, "(22)"))
                {
                    lugares.Add(22);
                }
                if (Regex.IsMatch(word, "(21)"))
                {
                    lugares.Add(21);
                }
                if (Regex.IsMatch(word, "(20)"))
                {
                    lugares.Add(20);
                }
                if (Regex.IsMatch(word, "(19)"))
                {
                    lugares.Add(19);
                }
                if (Regex.IsMatch(word, "(18)"))
                {
                    lugares.Add(18);
                }
                if (Regex.IsMatch(word, "(17)"))
                {
                    lugares.Add(17);
                }
                if (Regex.IsMatch(word, "(16)"))
                {
                    lugares.Add(16);
                }
                if (Regex.IsMatch(word, "(15)"))
                {
                    lugares.Add(15);
                }
                if (Regex.IsMatch(word, "(14)"))
                {
                    lugares.Add(14);
                }
                if (Regex.IsMatch(word, "(13)"))
                {
                    lugares.Add(13);
                }
                if (Regex.IsMatch(word, "(12)"))
                {
                    lugares.Add(12);
                }
                if (Regex.IsMatch(word, "(11)"))
                {
                    lugares.Add(11);
                }
                if (Regex.IsMatch(word, "(10)"))
                {
                    lugares.Add(10);
                }
            }
            valores19 = Request.Cookies["Asientos19"].Value;
            string[] asientos19 = valores.Split(',');
            foreach (string word19 in asientos19)
            {
                if (Regex.IsMatch(word19, "(9)"))
                {
                    lugares19.Add(9);
                }
                if (Regex.IsMatch(word19, "(8)"))
                {
                    lugares19.Add(8);
                }
                if (Regex.IsMatch(word19, "(7)"))
                {
                    lugares19.Add(7);
                }
                if (Regex.IsMatch(word19, "(6)"))
                {
                    lugares19.Add(6);
                }
                if (Regex.IsMatch(word19, "(5)"))
                {
                    lugares19.Add(5);
                }
                if (Regex.IsMatch(word19, "(4)"))
                {
                    lugares19.Add(4);
                }
                if (Regex.IsMatch(word19, "(3)"))
                {
                    lugares19.Add(3);
                }
                if (Regex.IsMatch(word19, "(2)"))
                {
                    lugares19.Add(2);
                }
                if (Regex.IsMatch(word19, "(1)"))
                {
                    lugares19.Add(1);
                }
            }
            PojoApartaTuLugar objAparta = new PojoApartaTuLugar();
            DaoApartaTuLugar objDaoAparta = new DaoApartaTuLugar();
            objAparta.IdUsuario = idUsuario;
            objAparta.IdAutobus = idAutobus;
            objAparta.IdViaje = idViaje;
            foreach (int asiento in lugares)
            {
                objAparta.N_Asiento = asiento;
                objDaoAparta.registrarAsientos(objAparta);
            }
            foreach (int asiento19 in lugares19)
            {
                objAparta.N_Asiento = asiento19;
                objDaoAparta.registrarAsientos(objAparta);
            }
            objDaoAparta.registrarReservacion(objAparta);
            objDaoAparta.registrarReservacionUsuario(objAparta);
        }
        [WebMethod]
        public static string asientos(int id)
        {
            DaoApartaTuLugar objDaoAparta = new DaoApartaTuLugar();
            var lista = objDaoAparta.getAsientosOcupados(id);
            var Json = JsonConvert.SerializeObject(lista);
            return Json;
        }
    }
}

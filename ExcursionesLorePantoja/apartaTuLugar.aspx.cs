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
namespace ExcursionesLorePantoja
{

    public partial class apartaTuLugar : System.Web.UI.Page
    {
        List<int> lugares = new List<int>();
        string valores;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            valores = Request.Cookies["Prueba"].Value;
            string[] asientos = valores.Split(',');
            foreach (string word in asientos)
            {
                if (word.Contains("1"))
                {
                    lugares.Add(1);
                }
                if (word.Contains("2"))
                {
                    lugares.Add(2);
                }
                if (word.Contains("3"))
                {
                    lugares.Add(3);
                }
                if (word.Contains("4"))
                {
                    lugares.Add(4);
                }
                if (word.Contains("5"))
                {
                    lugares.Add(5);
                }
                if (word.Contains("6"))
                {
                    lugares.Add(6);
                }
                if (word.Contains("7"))
                {
                    lugares.Add(7);
                }
                if (word.Contains("8"))
                {
                    lugares.Add(8);
                }
                if (word.Contains("9"))
                {
                    lugares.Add(9);
                }
                if (word.Contains("1") && word.Contains("0"))
                {
                    lugares.Add(10);
                }
                if (word.Contains("1") && word.Contains("1"))
                {
                    lugares.Add(11);
                }
                if (word.Contains("1") && word.Contains("2"))
                {
                    lugares.Add(12);
                }
                if (word.Contains("1") && word.Contains("3"))
                {
                    lugares.Add(13);
                }
                if (word.Contains("1") && word.Contains("4"))
                {
                    lugares.Add(14);
                }
                if (word.Contains("1") && word.Contains("5"))
                {
                    lugares.Add(15);
                }
                if (word.Contains("1") && word.Contains("6"))
                {
                    lugares.Add(16);
                }
                if (word.Contains("1") && word.Contains("7"))
                {
                    lugares.Add(17);
                }
                if (word.Contains("1") && word.Contains("8"))
                {
                    lugares.Add(18);
                }
                if (word.Contains("1") && word.Contains("9"))
                {
                    lugares.Add(19);
                }
                if (word.Contains("2") && word.Contains("0"))
                {
                    lugares.Add(20);
                }
                if (word.Contains("2") && word.Contains("1"))
                {
                    lugares.Add(21);
                }
                if (word.Contains("2") && word.Contains("2"))
                {
                    lugares.Add(22);
                }
                if (word.Contains("2") && word.Contains("3"))
                {
                    lugares.Add(23);
                }
                if (word.Contains("2") && word.Contains("4"))
                {
                    lugares.Add(24);
                }
                if (word.Contains("2") && word.Contains("5"))
                {
                    lugares.Add(25);
                }
                if (word.Contains("2") && word.Contains("6"))
                {
                    lugares.Add(26);
                }
                if (word.Contains("2") && word.Contains("7"))
                {
                    lugares.Add(27);
                }
                if (word.Contains("2") && word.Contains("8"))
                {
                    lugares.Add(28);
                }
                if (word.Contains("2") && word.Contains("9"))
                {
                    lugares.Add(29);
                }
                if (word.Contains("3") && word.Contains("0"))
                {
                    lugares.Add(30);
                }
                if (word.Contains("3") && word.Contains("1"))
                {
                    lugares.Add(31);
                }
                if (word.Contains("3") && word.Contains("2"))
                {
                    lugares.Add(32);
                }
                if (word.Contains("3") && word.Contains("3"))
                {
                    lugares.Add(33);
                }
                if (word.Contains("3") && word.Contains("4"))
                {
                    lugares.Add(34);
                }
                if (word.Contains("3") && word.Contains("5"))
                {
                    lugares.Add(35);
                }
                if (word.Contains("3") && word.Contains("6"))
                {
                    lugares.Add(36);
                }
                if (word.Contains("3") && word.Contains("7"))
                {
                    lugares.Add(37);
                }
                if (word.Contains("3") && word.Contains("8"))
                {
                    lugares.Add(38);
                }
                if (word.Contains("3") && word.Contains("9"))
                {
                    lugares.Add(39);
                }
                if (word.Contains("4") && word.Contains("0"))
                {
                    lugares.Add(40);
                }
                if (word.Contains("4") && word.Contains("1"))
                {
                    lugares.Add(41);
                }
                if (word.Contains("4") && word.Contains("2"))
                {
                    lugares.Add(42);
                }
                if (word.Contains("4") && word.Contains("3"))
                {
                    lugares.Add(43);
                }
                if (word.Contains("4") && word.Contains("4"))
                {
                    lugares.Add(44);
                }
                if (word.Contains("4") && word.Contains("5"))
                {
                    lugares.Add(45);
                }
                if (word.Contains("4") && word.Contains("6"))
                {
                    lugares.Add(46);
                }
                if (word.Contains("4") && word.Contains("7"))
                {
                    lugares.Add(47);
                }
                if (word.Contains("4") && word.Contains("8"))
                {
                    lugares.Add(48);
                }
                GreetingLabel.Text = lugares.ToString();
                GreetingLabel.Visible = true;
            }
        }
    }
}

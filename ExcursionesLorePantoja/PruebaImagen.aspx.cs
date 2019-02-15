using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.IO;

namespace ExcursionesLorePantoja
{
    public partial class PruebaImagen : System.Web.UI.Page
    {
        MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;username=root;password=");
        MySqlCommand command;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEscoger_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if(ext==".jpg"|| ext == ".png")
                {
                    string path = Server.MapPath("imgPrueba///");
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string archivo = "/imgPrueba/" + ext;
                    pictureBox1.ImageUrl = archivo;
                }
                else
                {
                    Response.Write("<h3>Por favor Seleccione una imagen</h3>");
                }
            }
            else
            {
                Response.Write("<h3>Por favor Seleccione un archivo</h3>");
            }
        }
    }
}
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
                    string archivo = "/imgPrueba/" + FileUpload1.FileName;
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

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            HttpPostedFile pf = FileUpload1.PostedFile;
            string filename = Path.GetFileName(pf.FileName);
            string filext = Path.GetExtension(filename);
            int size = pf.ContentLength;
            if(filext.ToLower()==".jpg" || filext.ToLower() == ".png")
            {
                Stream stream = pf.InputStream;
                BinaryReader br = new BinaryReader(stream);
                byte[] img = br.ReadBytes((int)stream.Length);
                String insertQuery = "insert into prueba.imagen() value(@img);";
                connection.Open();
                command = new MySqlCommand(insertQuery, connection);
                command.Parameters.Add("@img", MySqlDbType.LongBlob);
                command.Parameters["@img"].Value = img;
                if (command.ExecuteNonQuery() == 1)
                {
                    string script = "alert('Registro Exitoso');";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                }
            }
            connection.Close();
        }
    }
}
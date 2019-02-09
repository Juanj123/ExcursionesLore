using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Datos;
using Capa_Pojos;

namespace ExcursionesLorePantoja
{
    public partial class AgregarPrincipalGaleria : System.Web.UI.Page
    {
        DaoPrincipalGaleria daoPrincipalGaleria = new DaoPrincipalGaleria();
        PojoPrincipalGaleria pojoPrincipalGaleria = new PojoPrincipalGaleria();

        protected void Page_Load(object sender, EventArgs e)
        {
            cardarDatos();
        }

        public void cardarDatos()
        {

            List<PojoPrincipal> ltPrincipal = new List<PojoPrincipal>();

            ltPrincipal = daoPrincipalGaleria.obtenerIdPrincipal();

            for (int i = 0; i < ltPrincipal.Count(); i++)
            {
                dpdlIdDescripcion.Items.Add(Convert.ToString(ltPrincipal[i].IdPrincipal));
            }

        }
        
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string ruta = "";
            bool existe;
            ruta = Server.MapPath("~/img/imgGaleria");
            existe = Directory.Exists(ruta);

            try
            {
                if (!existe)
                {
                    Directory.CreateDirectory(ruta);
                }
            }
            catch { }


            if (FileUpload1.HasFile)
            {
                // se obtiene la extension y el tamaño para delimitar
                string ext = Path.GetExtension(FileUpload1.FileName);
                ext = ext.ToLower();

                int tam = FileUpload1.PostedFile.ContentLength;
                

               
                try
                {
                    //si la ruta existe en imgGaleria 
                    //guardar en principalGaleria
                    //si no guardar en imgGaleria y en principalGaleria
                    if (ext == ".png" && tam <= 1048576)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/img/imgGaleria/" + FileUpload1.FileName));
                        string path = Server.MapPath("~/img/imgGaleria/" + FileUpload1.FileName);

                        if (daoPrincipalGaleria.obtenerIdGaleria(path))
                        {
                            pojoPrincipalGaleria.IdGaleria = daoPrincipalGaleria.obtenerID(path);
                            pojoPrincipalGaleria.IdPrincipal = Convert.ToInt32(dpdlIdDescripcion.SelectedItem.Text);
                            pojoPrincipalGaleria.Img = path;
                            daoPrincipalGaleria.insertar(pojoPrincipalGaleria);

                        }
                        else
                        {

                           
                                FileUpload1.SaveAs(Server.MapPath("~/img/imgGaleria/" + FileUpload1.FileName));

                                pojoPrincipalGaleria.IdGaleria = daoPrincipalGaleria.obtenerID(path);
                                pojoPrincipalGaleria.IdPrincipal = Convert.ToInt32(dpdlIdDescripcion.SelectedItem.Text);
                                pojoPrincipalGaleria.Img = path;
                                daoPrincipalGaleria.insertar(pojoPrincipalGaleria);
                            


                        }
                    }

                       
                } catch { }

            }

        }

        protected void FileUpload1_DataBinding(object sender, EventArgs e)
        {
            FileUpload1.AppRelativeTemplateSourceDirectory = Path.Combine("~/img/imgGaleria");
        }
    }
}
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
        protected void Page_Load(object sender, EventArgs e)
        {
            cardarDatos();
        }

        public void cardarDatos()
        {
            List<PojoPrincipal> ltPrincipal = new List<PojoPrincipal>();

            ltPrincipal = daoPrincipalGaleria.obtenerIdPrincipal();

            for (int i=0; i < ltPrincipal.Count(); i++)
            {
                dpdlIdDescripcion.SelectedItem.Text = Convert.ToString(ltPrincipal[i].IdPrincipal);
            }

        }
        DaoPrincipalGaleria daoPrincipalGaleria = new DaoPrincipalGaleria();
        PojoPrincipalGaleria pojoPrincipalGaleria = new PojoPrincipalGaleria();
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string ruta = "~/img/imgGaleria";
            string rutaDestino = string.Empty;
            string rutaExtension = string.Empty;
            try
            {
                if (!Directory.Exists(ruta))
                {
                    Directory.CreateDirectory(ruta);
                }
            }
            catch { }


            if (FileUpload1.HasFile)
            {
                rutaDestino += FileUpload1.PostedFile;
                rutaDestino += "\\";
                rutaDestino += FileUpload1.FileName;
                rutaExtension = Path.GetExtension(rutaDestino);

                string rt = ruta +"\\" + FileUpload1.FileName;
                try
                {
                    //si la ruta existe en imgGaleria 
                    //guardar en principalGaleria
                    //si no guardar en imgGaleria y en principalGaleria

                    if (daoPrincipalGaleria.obtenerIdGaleria(rt))
                    {
                        pojoPrincipalGaleria.IdGaleria = daoPrincipalGaleria.obtenerID(rt);
                        pojoPrincipalGaleria.IdPrincipal = 1;
                        pojoPrincipalGaleria.Img = rt;
                        daoPrincipalGaleria.insertar(pojoPrincipalGaleria);

                    }
                    else
                    {
                        if (rutaExtension.ToUpper() != ".JPG" && rutaExtension.ToUpper() != ".JPEG")
                        {
                            FileUpload1.SaveAs(ruta + "\\" + FileUpload1.FileName);
                        }
                        
                        pojoPrincipalGaleria.IdGaleria = daoPrincipalGaleria.obtenerID(rt);
                        pojoPrincipalGaleria.IdPrincipal = 1;
                        pojoPrincipalGaleria.Img = rt;
                        daoPrincipalGaleria.insertar(pojoPrincipalGaleria);
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Datos;
using Capa_Pojos;

namespace ExcursionesLorePantoja
{
    public partial class Descripcion : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            PojoPrincipal pojoPrincipal = new PojoPrincipal();
            DaoPrincipal daoPrincipal = new DaoPrincipal();
            pojoPrincipal.Descripcion = txtDescripcion.Text;
            daoPrincipal.insertar(pojoPrincipal);

        }

        [WebMethod]
        public static List<PojoPrincipal> ListDescripcion()
        {
            List<PojoPrincipal> lista = null;
            DaoPrincipal daoPrincipal = new DaoPrincipal();
            try
            {
                lista = daoPrincipal.obtenerPrincipal();

            }
            catch (Exception ex)
            {
                lista = null;
            }
            return lista;
        }
        [WebMethod]
        public static bool EliminarDatos(string id)
        {
            DaoPrincipal daoPrincipal = new DaoPrincipal();
            int idVideo = Convert.ToInt32(id);
            bool ok = daoPrincipal.Eliminar(idVideo);
            return ok;
        }
    }
}
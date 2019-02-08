using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Datos;
using Capa_Pojos;

namespace ExcursionesLorePantoja
{
    public partial class PrincipalGaleria1 : System.Web.UI.Page
    {
        DaoPrincipal daoPrincipal = new DaoPrincipal();
        PojoPrincipal pojoPrincipal = new PojoPrincipal();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            //pojoPrincipal.Descripcion = txtDescripcion.Text;
            //if (daoPrincipal.insertar(pojoPrincipal).Equals("Guardado"))
            //{
            //    txtDescripcion.Text = null;
            //}
        }

        protected void btnAgregarImg_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarPrincipalGaleria.aspx");
        }
    }
}
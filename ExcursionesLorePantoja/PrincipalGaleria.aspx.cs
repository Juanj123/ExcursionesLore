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
    public partial class PrincipalGaleria1 : System.Web.UI.Page
    {
        DaoPrincipal daoPrincipal = new DaoPrincipal();
        PojoPrincipal pojoPrincipal = new PojoPrincipal();

        DaoPrincipalGaleria daoPrincipalGaleria = new DaoPrincipalGaleria();
        PojoPrincipalGaleria pojoPrincipalGaleria = new PojoPrincipalGaleria();
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void btnDescripcion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Descripcion.aspx");

        }
        [WebMethod]
        public static List<pojoMostrarGaleria> ListImg()
        {
            List<pojoMostrarGaleria> lista = null;
            DaoGaleria daoGaleria = new DaoGaleria();
            try
            {
                lista = daoGaleria.obtenerGaleria();

            }
            catch (Exception ex)
            {
                lista = null;
            }
            return lista;
        }

        [WebMethod]
        public static List<pojoMostrarGaleria> comboDescri()
        {
            List<pojoMostrarGaleria> lista = null;
            DaoGaleria daoGaleria = new DaoGaleria();
            try
            {
                lista = daoGaleria.obtenerGaleria();

            }
            catch (Exception ex)
            {
                lista = null;
            }
            return lista;
        }

       
    }
}
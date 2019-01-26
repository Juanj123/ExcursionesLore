using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Pojos;
using Capa_Datos;
using System.Web.Services;

namespace ExcursionesLorePantoja
{
    public partial class PrincipalVideo : System.Web.UI.Page
    {
        private DaoVideo daoVideo;
        private PojoVideo PojoVideo;
        protected void Page_Load(object sender, EventArgs e)
        {
            daoVideo = new DaoVideo();
            PojoVideo = new PojoVideo();
            mostrarVideo();
            //mostrarTabla();
        }

        public void mostrarVideo()
        {
            List<PojoVideo> listPojo = new List<PojoVideo>();
            listPojo = daoVideo.obtenerVideo();
            for (int i=0; i<listPojo.Count(); i++)
            {
                ltVideo.Text = "<iframe class='d - block w - 100' width='800' height='400' src='" + listPojo[i].Url + "' frameborder='0' allow='accelerometer; autoplay; encrypted - media; gyroscope; picture -in-picture' allowfullscreen></iframe>";
                //ltVideo.Text = "<iframe class='d - block w - 100' width='800' height='400' src='https://youtu.be/DkeiKbqa02g?list=RDGzU8KqOY8YA' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen class='col-12'></iframe>";
            }
            
        }

        public void mostrarTabla()
        {
            var videos = daoVideo.obtenerVideo();
        }

        protected void btnAgregarVideo_Click(object sender, EventArgs e)
        {
            Response.Redirect("agregarVideo.aspx");
        }

        [WebMethod]
        public static List<pojoMostrarVideo> ListVideos()
        {
            List<pojoMostrarVideo> lista= null;
            DaoVideo daoVideo = new DaoVideo();
            try
            {
                lista = daoVideo.obtenerVideos();

            } catch(Exception ex)
            {
                lista = null;
            }
            return lista;
        }
    }
}
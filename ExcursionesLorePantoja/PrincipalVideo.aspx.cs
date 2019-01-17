using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Pojos;
using Capa_Datos;

namespace ExcursionesLorePantoja
{
    public partial class PrincipalVideo : System.Web.UI.Page
    {
        private DaoVideo daoVideo;
        protected void Page_Load(object sender, EventArgs e)
        {
            daoVideo = new DaoVideo();
            mostrarVideo();
            //mostrarTabla();
        }

        public void mostrarVideo()
        {
            ltVideo.Text = "<iframe class='d - block w - 100' width='800' height='400' src='https://www.youtube.com/embed/znk2OICHbjY?controls=0' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen class='col-12'></iframe>";
        }

        public void mostrarTabla()
        {
            var videos = daoVideo.obtenerVideo();
        }
    }
}
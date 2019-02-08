using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Pojos
{
    public class PojoPrincipalGaleria
    {
        int idGaleria, idPrincipal;
        string img;

        public int IdGaleria { get => idGaleria; set => idGaleria = value; }
        public int IdPrincipal { get => idPrincipal; set => idPrincipal = value; }
        public string Img { get => img; set => img = value; }
    }
}

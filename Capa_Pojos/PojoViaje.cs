﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Pojos
{
    public class PojoViaje
    {
        int idViaje, idAutobus, dia, mes, año;
        string destino, hora, descripcion, nota, itinerario;
        double costo;
        byte[] img;

        public int IdViaje { get => idViaje; set => idViaje = value; }
        public int IdAutobus { get => idAutobus; set => idAutobus = value; }
        public int Dia { get => dia; set => dia = value; }
        public int Mes { get => mes; set => mes = value; }
        public int Año { get => año; set => año = value; }
        public byte[] Img { get => img; set => img = value; }
        public string Destino { get => destino; set => destino = value; }
        public string Hora { get => hora; set => hora = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public string Nota { get => nota; set => nota = value; }
        public string Itinerario { get => itinerario; set => itinerario = value; }
        public double Costo { get => costo; set => costo = value; }
    }
}

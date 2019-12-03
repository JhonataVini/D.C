using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace D.C.Models
{
    public class Curso
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public DateTime Duracao { get; set; }
        public string Idioma { get; set; }
        public float Valor { get; set; }
    }

}
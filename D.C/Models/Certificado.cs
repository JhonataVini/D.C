using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace D.C.Models
{
    public class Certificado
    {
        public int Id { get; set; }
        public string Descricao { get; set; }
        public DateTime Validade { get; set; }
        public string TipoArquivo { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1.Models
{
    internal class Szamla
    {
        string id;
        string szolgaltatasRovidNev;
        DateTime tol;
        DateTime ig;
        decimal osszeg;
        DateTime hatarido;
        DateTime befizetve;
        string megjegyzes;
        string azon;

        public string Id { get => id; set => id = value; }
        public string SzolgaltatasRovidNev { get => szolgaltatasRovidNev; set => szolgaltatasRovidNev = value; }//
        public DateTime Tol { get => tol; set => tol = value; }
        public DateTime Ig { get => ig; set => ig = value; }
        public decimal Osszeg { get => osszeg; set => osszeg = value; }
        public DateTime Hatarido { get => hatarido; set => hatarido = value; }
        public DateTime Befizetve { get => befizetve; set => befizetve = value; }
        public string Megjegyzes { get => megjegyzes; set => megjegyzes = value; }
        public string Azon { get => azon; set => azon = value; }
    }
}

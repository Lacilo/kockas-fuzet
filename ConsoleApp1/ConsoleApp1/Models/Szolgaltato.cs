using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace ConsoleApp1.Models
{
    internal class Szolgaltato
    {
        string rovidNev;
        string nev;
        string ugyfelszolg;
        string cim;
        int tel;

        public string RovidNev { get => rovidNev; set => rovidNev = value; }
        public string Nev { get => nev; set => nev = value; }
        public string Ugyfelszolg { get => ugyfelszolg; set => ugyfelszolg = value; }
        public string Cim { get => cim; set => cim = value; }
        public int Tel { get => tel; set => tel = value; }
    }
}
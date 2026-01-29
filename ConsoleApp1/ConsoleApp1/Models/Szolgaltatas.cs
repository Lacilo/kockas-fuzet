using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1.Models
{
    internal class Szolgaltatas
    {
        string id;
        string nev;
        string szolgKulcs;

        public string Id { get => id; set => id = value; }
        public string Nev { get => nev; set => nev = value; }
        public string SzolgKulcs { get => szolgKulcs; set => szolgKulcs = value; }
    }
}

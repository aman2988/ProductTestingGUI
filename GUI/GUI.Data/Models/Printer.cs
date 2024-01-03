using System;
using System.Collections.Generic;

namespace GUI.Data.Models
{
    public partial class Printer
    {
        public int Id { get; set; }
        public string Ipaddress { get; set; } = null!;
        public string Port { get; set; } = null!;
    }
}

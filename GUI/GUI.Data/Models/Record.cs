using System;
using System.Collections.Generic;

namespace GUI.Data.Models
{
    public partial class Record
    {
        public int Id { get; set; }
        public string Host { get; set; } = null!;
        public string ProductName { get; set; } = null!;
        public string Pn { get; set; } = null!;
        public string Sn { get; set; } = null!;
        public string FullLog { get; set; } = null!;
        public int TotalTime { get; set; }
        public DateTime DateTime { get; set; }
    }
}

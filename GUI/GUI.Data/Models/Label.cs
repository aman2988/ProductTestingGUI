using System;
using System.Collections.Generic;

namespace GUI.Data.Models
{
    public partial class Label
    {
        public Label()
        {
            Devices = new HashSet<Device>();
        }

        public int Id { get; set; }
        public string Labeltype { get; set; } = null!;
        public string? Data { get; set; }

        public virtual ICollection<Device> Devices { get; set; }
    }
}

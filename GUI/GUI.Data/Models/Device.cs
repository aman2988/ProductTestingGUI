using System;
using System.Collections.Generic;

namespace GUI.Data.Models
{
    public partial class Device
    {
        public Device()
        {
            Tests = new HashSet<Test>();
        }

        public int Id { get; set; }
        public string ProductName { get; set; } = null!;
        public string Pn { get; set; } = null!;
        public sbyte? Available { get; set; }
        public int? LabelType { get; set; }

        public virtual Label? LabelTypeNavigation { get; set; }
        public virtual ICollection<Test> Tests { get; set; }
    }
}

using System;
using System.Collections.Generic;

namespace GUI.Data.Models
{
    public partial class Test
    {
        public int Id { get; set; }
        public string TestName { get; set; } = null!;
        public int? ProductId { get; set; }

        public virtual Device? Product { get; set; }
    }
}

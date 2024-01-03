using GUI.Data.Models;

namespace GUI.Models
{
    public class DashboardViewModel
    {
        public DashboardViewModel() {
            Products = new List<Device>();
        }
        public List<Device> Products { get; set; }
        public Printer PrinterSettings { get; set; }
    }
}

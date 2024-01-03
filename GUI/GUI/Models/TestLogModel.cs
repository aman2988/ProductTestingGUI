namespace GUI.Models
{
    public class TestLogModel
    {
        public TestLogModel() {
            FullLog = new List<string>();
        }
        public int ProductId { get; set; }
        public List<string> FullLog { get; set; } = null!;
        public int TotalTime { get; set; }
    }
}

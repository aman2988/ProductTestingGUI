using GUI.Data.Models;
using GUI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;
using static System.Net.WebRequestMethods;

namespace GUI.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ProductsContext _context;
        private readonly LogsContext _logContext;
        public HomeController(ILogger<HomeController> logger, ProductsContext context, LogsContext logContext)
        {
            _logger = logger;
            _context = context;
            _logContext = logContext;
        }

        public IActionResult Index()
        {
            DashboardViewModel model = new DashboardViewModel();
            model.Products = _context.Devices.Where(x => x.Available == 1).ToList();
            model.PrinterSettings = _context.Printers.FirstOrDefault();
            return View(model);
        }

        [HttpGet]
        public IActionResult GetDeviceViewById(int Id)
        {
            Device device = _context.Devices.Include(x => x.Tests).Where(x => x.Id == Id && x.Available == 1).FirstOrDefault();
            return PartialView("_TestList", device?.Tests);
        }

        [HttpGet]
        public IActionResult GetDeviceById(int Id)
        {
            Device device = _context.Devices.Include(x => x.Tests).Where(x => x.Id == Id && x.Available == 1).FirstOrDefault();
            return Json(device);
        }


        [HttpGet]
        public IActionResult SavePrinter(string ip, string port)
        {
            Printer model = _context.Printers.FirstOrDefault();
            if (model == null)
            {
                _context.Printers.Add(new Printer { Ipaddress = ip, Port = port });
                _context.SaveChanges();
            }
            else
            {
                model.Ipaddress = ip;
                model.Port = port;
                _context.Entry(model).State = EntityState.Modified;
                _context.SaveChanges();
            }
            return Json(new { success = true });
        }

        public JsonResult ProcessIndividualTest(int pId, int tId, bool appendLine = true)
        {
            try
            {
                Device product = _context.Devices.Include(x => x.Tests).Where(x => x.Id == pId && x.Available == 1).FirstOrDefault();
                bool success = false;
                Random rnd = new Random();
                int num = rnd.Next();

                if (num % 2 == 0)
                {
                    //is even
                    success = true;
                }

                int milliseconds = 4000;
                Thread.Sleep(milliseconds);
                string testName = product.Tests.Where(x => x.Id == tId).FirstOrDefault().TestName;
                string log = String.Format("{0};{1};{2};{3}", DateTime.Now, product.Pn, "This is test-" + testName + "-log", success == true ? "OK" : "NOK");
                string fileName = "Logs/" + product.ProductName + ".dat";
                bool newFileCreated = false;
                if (!System.IO.File.Exists(fileName))
                {
                    var newFile = System.IO.File.Create(fileName);
                    newFile.Close();
                    newFileCreated = true;
                }

                using (var sw = new StreamWriter(fileName, true))
                {
                    if (appendLine && !newFileCreated)
                    {
                        sw.WriteLine();
                        sw.WriteLine();
                    }
                    sw.WriteLine(log);
                }

                return Json(new { success = success, message = log });
            }
            catch(Exception ex)
            {
                return Json(new { success = false, message = ex.Message });
            }
        }

        [HttpPost]
        public bool SaveTestLogs(TestLogModel model)
        {
            try
            {
                Device product = _context.Devices.FirstOrDefault(x => x.Id == model.ProductId);
                _logContext.Records.Add(new Record()
                {
                    DateTime = DateTime.Now,
                    Host = System.Environment.MachineName,
                    Pn = product.Pn,
                    ProductName = product.ProductName,
                    Sn = "",
                    TotalTime = model.TotalTime,
                    FullLog = String.Join(", ", model.FullLog.ToArray())
                });
                _logContext.SaveChanges();
                return true;
            }
            catch (Exception ex) {
                return false;
            }
        }

        public IActionResult Print()
        {
            Printer _printer = _context.Printers.FirstOrDefault();
            if (_printer != null)
            {
                try
                {
                    // Open connection
                    System.Net.Sockets.TcpClient client = new System.Net.Sockets.TcpClient();
                    client.Connect(IPAddress.Parse(_printer.Ipaddress), Convert.ToInt32(_printer.Port));

                    // Write ZPL String to connection
                    //System.IO.StreamWriter writer = new System.IO.StreamWriter(client.GetStream(), Encoding.UTF8);

                    //StreamReader reader = new StreamReader("Logs/Product3.dat"); //ie: C:\\Apps\\test.txt
                    StreamWriter writer = new StreamWriter(client.GetStream());
                    //string testFile = reader.ReadToEnd();
                    //reader.Close();
                    //writer.Write(testFile);
                    writer.WriteLine("Hello Printer!");
                    writer.Flush();
                    writer.Close();
                    client.Close();                  
                }
                catch (Exception ex)
                {
                    return Json(new { success = false, message = ex.Message });
                }
            }
            return Json(new { success = true, message = "Print Command Sent to Printer" });
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
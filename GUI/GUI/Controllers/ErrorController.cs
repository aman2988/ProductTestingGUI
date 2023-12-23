using Microsoft.AspNetCore.Mvc;

namespace GUI.Controllers
{
    public class ErrorController : Controller
    {
        public IActionResult Index()
        {
            return View("Error");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CarService.Areas.Administrator.Controllers
{
    [Authorize(Roles="Administrator")]
    public class AdminController : Controller
    {

    }
}

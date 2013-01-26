using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CarService.DAL;
using System.Web.Security;

namespace CarService.Areas.Administrator.Controllers
{
    public class HomeController : AdminController
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";

            /*using (CarServiceEntities db = new CarServiceEntities())
            {
                db.Cars.Add(new Car { Brand = "Opel", Color = "Blue", Description = "Troubleshoot Anti-Theft System", EngineNumber = 184223, EngineWorkVolume = 350, FrameNumber = 252596, Model = "Astra", Owner = "Victor Cristal", PhoneNumber = 265403, RegistryNumber = "UX1WSIRR", Year = 2001 });
                db.Cars.Add(new Car { Brand = "Mazda", Color = "Red", Description = "Engine Overheating", EngineNumber = 286217, EngineWorkVolume = 500, FrameNumber = 343475, Model = "717C", Owner = "Gemma Bessie", PhoneNumber = 218468, RegistryNumber = "HLO2IDI7", Year = 1995 });
                db.Cars.Add(new Car { Brand = "Peugeot", Color = "Green", Description = " Coolant Leak", EngineNumber = 210750, EngineWorkVolume = 450, FrameNumber = 291182, Model = "106", Owner = "Demelza Charmaine", PhoneNumber = 893870, RegistryNumber = "DC9PCVBO", Year = 1999 });
                db.Cars.Add(new Car { Brand = "Fiat", Color = "Black", Description = "Car Won't Start (Possible Causes & Quick Checks)", EngineNumber = 327299, EngineWorkVolume = 550, FrameNumber = 425151, Model = "Uno", Owner = "Wayland Ewart", PhoneNumber = 852887, RegistryNumber = "8KAXZTGI", Year = 2005 });
                db.Cars.Add(new Car { Brand = "Opel", Color = "Yellow", Description = "Engine Won't Crank or Start", EngineNumber = 295469, EngineWorkVolume = 600, FrameNumber = 453585, Model = "Agila", Owner = "Katharina Eireann", PhoneNumber = 408691, RegistryNumber = "QYLDCZ34", Year = 2002 });
                db.Cars.Add(new Car { Brand = "Mazda", Color = "Brown", Description = "Engine Won't Start, No Fuel (Bad Fuel Pump?)", EngineNumber = 399185, EngineWorkVolume = 350, FrameNumber = 547847, Model = " 727C", Owner = "Harry Finnegan", PhoneNumber = 366342, RegistryNumber = "2UCCXJYK", Year = 1997 });
                db.Cars.Add(new Car { Brand = "Peugeot", Color = "Purple", Description = "Engine Won't Start, No Spark", EngineNumber = 476151, EngineWorkVolume = 600, FrameNumber = 573631, Model = "307", Owner = "Emely Shae", PhoneNumber = 328080, RegistryNumber = "WK4XPWAB", Year = 1998 });
                db.Cars.Add(new Car { Brand = "Fiat", Color = "Cyan", Description = "Engine Idles Rough or Misfires", EngineNumber = 537441, EngineWorkVolume = 500, FrameNumber = 602128, Model = "Tipo", Owner = "Jeanna Santa", PhoneNumber = 649787, RegistryNumber = "QTPCJJ8V", Year = 1994 });
                db.Cars.Add(new Car { Brand = "Opel", Color = "Magenta", Description = "Engine Idle Surge ", EngineNumber = 573472, EngineWorkVolume = 500, FrameNumber = 656553, Model = "Calibra", Owner = "Wenona Ornella", PhoneNumber = 290856, RegistryNumber = "SIJ2Y6JM", Year = 2000 });
                db.Cars.Add(new Car { Brand = "Mazda", Color = "White", Description = "Engine Vacuum Leak", EngineNumber = 657682, EngineWorkVolume = 600, FrameNumber = 708391, Model = " 737C", Owner = "Elettra Ethelyn", PhoneNumber = 944766, RegistryNumber = "FH6IVUQ4", Year = 2007 });
                db.Cars.Add(new Car { Brand = "Peugeot", Color = "Red", Description = "Warning Lights On", EngineNumber = 682857, EngineWorkVolume = 350, FrameNumber = 709522, Model = "206", Owner = "Catrin Lexa", PhoneNumber = 734451, RegistryNumber = "DVBRPYBL", Year = 2006 });
                db.Cars.Add(new Car { Brand = "Fiat", Color = "Black", Description = "Failed Emissions Test", EngineNumber = 929261, EngineWorkVolume = 450, FrameNumber = 725365, Model = "Bravo", Owner = "Dahlia Alexander", PhoneNumber = 600644, RegistryNumber = "44BHD1ID", Year = 2003 });
                db.Cars.Add(new Car { Brand = "Opel", Color = "Yellow", Description = "Smoke In Exhaust", EngineNumber = 927880, EngineWorkVolume = 600, FrameNumber = 842912, Model = "Corsa", Owner = "Farran Moreen", PhoneNumber = 342636, RegistryNumber = "1AITTTZP", Year = 2004 });
                db.Cars.Add(new Car { Brand = "Mazda", Color = "Green", Description = "Engine Noise", EngineNumber = 968532, EngineWorkVolume = 500, FrameNumber = 949550, Model = "757", Owner = "Flannery Adriano", PhoneNumber = 692305, RegistryNumber = "Y62HLUI9", Year = 2008 });
                db.Cars.Add(new Car { Brand = "Peugeot", Color = "White", Description = "Poor Fuel Economy", EngineNumber = 961684, EngineWorkVolume = 450, FrameNumber = 898464, Model = "306", Owner = "Giffard Maurice", PhoneNumber = 892354, RegistryNumber = "UYTUXVPK", Year = 2011 });
                db.Cars.Add(new Car { Brand = "Fiat", Color = "Blue", Description = "Engine Stalls", EngineNumber = 984300, EngineWorkVolume = 350, FrameNumber = 999216, Model = "500", Owner = "Kole Carol", PhoneNumber = 416500, RegistryNumber = "M4BM8J0D", Year = 2009 });
                db.SaveChanges();
            }*/
            
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}

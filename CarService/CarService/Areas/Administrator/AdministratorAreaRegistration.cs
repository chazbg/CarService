using System.Web.Mvc;

namespace CarService.Areas.Administrator
{
    public class AdministratorAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Administrator";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            string[] str = {"CarService.Areas.Administrator.Controllers"};
            context.MapRoute(
                name: "Administrator_default",
                url: "Administrator/{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }, 
                namespaces: str
            );
        }
    }
}

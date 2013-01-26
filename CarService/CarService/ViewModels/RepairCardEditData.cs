using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CarService.DAL;

namespace CarService.ViewModels
{
    public class SelectedPartData
    {
        public int Id { get; set; }
        public decimal Price { get; set; }
        public string PartName { get; set; }
        public bool Selected { get; set; }
    }
}

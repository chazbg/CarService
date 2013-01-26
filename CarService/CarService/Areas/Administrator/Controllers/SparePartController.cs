using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CarService.DAL;
using WebMatrix.WebData;

namespace CarService.Areas.Administrator.Controllers
{
    public class SparePartController : AdminController
    {
        private CarServiceEntities db = new CarServiceEntities();

        //
        // GET: /Administrator/SparePart/

        public ActionResult Index()
        {
            var spareparts = db.SpareParts.Include(s => s.UserProfile);
            return View(spareparts.ToList());
        }

        //
        // GET: /Administrator/SparePart/Details/5

        public ActionResult Details(int id = 0)
        {
            SparePart sparepart = db.SpareParts.Find(id);
            if (sparepart == null)
            {
                return HttpNotFound();
            }
            return View(sparepart);
        }

        //
        // GET: /Administrator/SparePart/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Administrator/SparePart/Create

        [HttpPost]
        public ActionResult Create(SparePart sparepart)
        {
            if (ModelState.IsValid)
            {
                sparepart.UserId = WebSecurity.CurrentUserId;
                sparepart.Activated = true;
                db.SpareParts.Add(sparepart);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(sparepart);
        }

        //
        // GET: /Administrator/SparePart/Edit/5

        public ActionResult Edit(int id = 0)
        {
            SparePart sparepart = db.SpareParts.Find(id);
            if (sparepart == null)
            {
                return HttpNotFound();
            }
            ViewBag.UserId = new SelectList(db.UserProfiles, "UserId", "UserName", sparepart.UserId);
            return View(sparepart);
        }

        //
        // POST: /Administrator/SparePart/Edit/5

        [HttpPost]
        public ActionResult Edit(SparePart sparepart)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sparepart).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UserId = new SelectList(db.UserProfiles, "UserId", "UserName", sparepart.UserId);
            return View(sparepart);
        }

        //
        // GET: /Administrator/SparePart/Delete/5

        public ActionResult Delete(int id = 0)
        {
            SparePart sparepart = db.SpareParts.Find(id);
            if (sparepart == null)
            {
                return HttpNotFound();
            }
            return View(sparepart);
        }

        //
        // POST: /Administrator/SparePart/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            SparePart sparepart = db.SpareParts.Find(id);
            sparepart.Activated = false;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
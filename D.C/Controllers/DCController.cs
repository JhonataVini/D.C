using D.C.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace D.C.Controllers
{
    public class DCController : Controller
    {
        private DCContext db = new DCContext();

        // GET: DC
        public ActionResult Index()
        {
            return View(db.Cursos.ToList());
        }
    }
}
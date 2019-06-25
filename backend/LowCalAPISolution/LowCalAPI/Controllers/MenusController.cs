using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LowCalAPI.Entities;
using Newtonsoft.Json;

namespace LowCalAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MenusController : ControllerBase
    {
        // GET api/menus
        [HttpGet ("{calorieen}")]
        public ActionResult<IEnumerable<Entities.Menu>> Get(int calorieen)
        {
            var menus = MydbContext.Instance.Menus
                .Where(m => m.Calorieen <= calorieen)
                .OrderByDescending (m => m.Calorieen)
                .ToList();

            return menus;
        }
    }
}

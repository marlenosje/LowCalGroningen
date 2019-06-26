using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using LowCalAPI.Entities;
using Microsoft.AspNetCore.Cors;


namespace LowCalAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RestaurantsController : ControllerBase
    {
        // GET api/restaurants
        [EnableCors]
        [HttpGet]
        public ActionResult<IEnumerable<Entities.Restaurant>> GetAllRestaurants()
        {
            var restaurants = MydbContext.Instance.Restaurants
                .ToList();

            return restaurants;
        }
    }
}

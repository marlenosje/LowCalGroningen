using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using LowCalAPI.Entities;
using Newtonsoft.Json;


namespace LowCalAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RestaurantsController : ControllerBase
    {
        // GET api/values
        [HttpGet]
        public ActionResult<IEnumerable<Entities.Restaurant>> GetAllRestaurants()
        {
            var restaurants = MydbContext.Instance.Restaurants
                .ToList();

            return restaurants;
        }

        [HttpGet("{restaurantId}")]
        public ActionResult<IEnumerable<Entities.Restaurant>> GetRestaurant(int restaurantId)
        {
            return MydbContext.Instance.Restaurants.Where(r => r.Id == restaurantId).ToList();
        }

        // GET api/values/5
        [HttpGet("{calorieen}")]
        public ActionResult<string> Get(int id)
        {
            return "value";
        }

        // POST api/values
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }

    }
}

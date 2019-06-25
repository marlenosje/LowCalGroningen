using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace LowCalAPI.Entities
{
    public partial class Menu
    {
        public int Idmenu { get; set; }
        public string MenuNaam { get; set; }
        public string Voorgerecht { get; set; }
        public string Hoofdgerecht { get; set; }
        public string Nagerecht { get; set; }
        public int Calorieen { get; set; }
        public decimal Prijs { get; set; }
        public int? RestaurantId { get; set; }
        public string menuPlaatjeUrl { get; set;}
       
        [ForeignKey(nameof(RestaurantId))]
        public virtual Restaurant Restaurant { get; set; }
    }
}

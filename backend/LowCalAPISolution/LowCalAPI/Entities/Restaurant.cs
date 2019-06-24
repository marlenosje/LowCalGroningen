using System;
using System.Collections.Generic;

namespace LowCalAPI.Entities
{
    public partial class Restaurant
    {
        public Restaurant()
        {
            Menus = new HashSet<Menu>();
        }

        public int Id { get; set; }
        public string Naam { get; set; }
        public string Adres { get; set; }
        public string Postcode { get; set; }
        public string Telefoon { get; set; }
        public string Type { get; set; }
        public string Website { get; set; }
        public string Facebook { get; set; }
        public string Keuken { get; set; }
        public virtual ICollection<Menu> Menus { get; set; }
    }
}

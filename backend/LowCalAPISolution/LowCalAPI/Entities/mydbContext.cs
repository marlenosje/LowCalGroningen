using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace LowCalAPI.Entities
{
    public partial class MydbContext : DbContext
    {
        public virtual DbSet<Menu> Menus { get; set; }
        public virtual DbSet<Restaurant> Restaurants { get; set; }
        private static MydbContext _context;
        public static MydbContext Instance
        {
            get
            {
                if (_context == null)
                {
                    _context = new MydbContext();
                }
                return _context;
            }
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseMySql("server=localhost;userid=root;pwd=rootpw;port=3306;database=mydb;sslmode=none;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Menu>(entity =>
            {
                entity.HasKey(e => e.Idmenu)
                    .HasName("PRIMARY");

                entity.ToTable("menu");

                entity.HasIndex(e => e.RestaurantId)
                    .HasName("fk_menu_restaurant_idx");

                entity.Property(e => e.Idmenu)
                    .HasColumnName("idmenu")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Calorieen)
                    .HasColumnName("calorieen")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Hoofdgerecht)
                    .HasColumnName("hoofdgerecht")
                    .HasMaxLength(100);

                entity.Property(e => e.MenuNaam)
                    .IsRequired()
                    .HasColumnName("menunaam")
                    .HasMaxLength(100);

                entity.Property(e => e.Nagerecht)
                    .HasColumnName("nagerecht")
                    .HasMaxLength(100);

                entity.Property(e => e.Prijs)
                    .IsRequired()
                    .HasColumnName("prijs")
                    .HasColumnType("decimal(5,2)");

                entity.Property(e => e.RestaurantId)
                    .IsRequired()
                    .HasColumnName("RestaurantId")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Voorgerecht)
                    .HasColumnName("voorgerecht")
                    .HasMaxLength(100);

                entity.Property(e => e.menuPlaatjeUrl)
                    .HasColumnName("menuPlaatjeUrl")
                    .HasMaxLength(255);
            });

            modelBuilder.Entity<Restaurant>(entity =>
            {
                entity.ToTable("restaurant");

                entity.HasIndex(e => e.Adres)
                    .HasName("adres_UNIQUE")
                    .IsUnique();

                entity.HasIndex(e => e.Facebook)
                    .HasName("facebook_UNIQUE")
                    .IsUnique();

                entity.HasIndex(e => e.Naam)
                    .HasName("naam_UNIQUE")
                    .IsUnique();

                entity.HasIndex(e => e.Telefoon)
                    .HasName("telefoon_UNIQUE")
                    .IsUnique();

                entity.HasIndex(e => e.Website)
                    .HasName("website_UNIQUE")
                    .IsUnique();

                entity.Property(e => e.Id)
                    .HasColumnName("id")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Adres)
                    .IsRequired()
                    .HasColumnName("adres")
                    .HasMaxLength(100);

                entity.Property(e => e.Facebook)
                    .HasColumnName("facebook")
                    .HasMaxLength(255);

                entity.Property(e => e.Naam)
                    .IsRequired()
                    .HasColumnName("naam")
                    .HasMaxLength(100);

                entity.Property(e => e.Postcode)
                    .IsRequired()
                    .HasColumnName("postcode")
                    .HasMaxLength(6);

                entity.Property(e => e.Telefoon)
                    .IsRequired()
                    .HasColumnName("telefoon")
                    .HasMaxLength(12);

                entity.Property(e => e.Type)
                    .IsRequired()
                    .HasColumnName("type")
                    .HasMaxLength(45);

                entity.Property(e => e.Website)
                    .HasColumnName("website")
                    .HasMaxLength(255);

                entity.Property(e => e.Keuken)
                    .IsRequired()
                    .HasColumnName("Keuken")
                    .HasMaxLength(45);
            });
        }
    }
}

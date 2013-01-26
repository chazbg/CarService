﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CarService.DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CarServiceEntities : DbContext
    {
		private string _schemaName = string.Empty;
        public CarServiceEntities(string connectionName, string schemaName)
            : base("name=CarServiceEntities")
        {
			_schemaName = schemaName;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
			Database.SetInitializer<CarServiceEntities>(new CreateDatabaseIfNotExists<CarServiceEntities>());
			modelBuilder.Entity<CarServiceEntities>().ToTable("CarService", _schemaName);
			base.onModelCreating(modelBuilder);
            //throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Car> Cars { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<RepairCard> RepairCards { get; set; }
        public DbSet<SparePart> SpareParts { get; set; }
        public DbSet<UserProfile> UserProfiles { get; set; }
    }
}

using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.SqlServer;
namespace LeerData
{
    public class AppVentaCursosContext : DbContext
    {
        private const string connectionString = @"Server=MXE41NBOJ1BRNF2\SQLEXPRESS;Database=CursosOnlineDev;integrated security=True";

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder){
            optionsBuilder.UseSqlServer(connectionString);
        }
        public DbSet<Curso> Curso{get;set;}
        public DbSet<Precio> Precio { get; set; }
    }
}
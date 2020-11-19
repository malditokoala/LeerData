using Microsoft.EntityFrameworkCore;
using System;

namespace LeerData
{
    class Program
    {
        static void Main(string[] args)
        {
            //Console.WriteLine("Hola Un saludos desde la consola!");

            using (var db = new AppVentaCursosContext())
            {
               /*  var cursos = db.Curso.AsNoTracking(); // Arreglo IQueryable
                foreach (var curso in cursos)
                {
                    Console.WriteLine(curso.Titulo + "-----" + curso.Descripcion);
                }
             */
             var cursos = db.Curso.Include(p => p.PrecioPromocion).AsNoTracking();
             foreach (var curso in cursos)
                {
                    Console.WriteLine(curso.Titulo + "-----" + curso.Descripcion+ "----$"+curso.PrecioPromocion.PrecioActual);
                }
            }
        }
    }
}

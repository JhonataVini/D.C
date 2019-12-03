using System;
using System.Collections.Generic;
using System.Linq;  
using System.Web;
using D.C.Models;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;


namespace D.C.DAL
{
    public class DCContext : DbContext
    {
        public DCContext() : base("DCContext")
        {
        }
        public DbSet<Aluno> Alunos { get; set; }
        public DbSet<Categoria> Categorias { get; set; }
        public DbSet<Certificado> Certificados { get; set; }
        public DbSet<Curso> Cursos { get; set; }
        public DbSet<Favorito> Favoritos { get; set; }
        public DbSet<StatusCurso> StatusCursos { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace GUI.Data.Models
{
    public partial class LogsContext : DbContext
    {
        public LogsContext()
        {
        }

        public LogsContext(DbContextOptions<LogsContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Record> Records { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
//            if (!optionsBuilder.IsConfigured)
//            {
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
//                optionsBuilder.UseMySQL("Server=127.0.0.1;Database=Logs;Uid=root;pwd=12345678");
//            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Record>(entity =>
            {
                entity.ToTable("records");

                entity.Property(e => e.DateTime).HasColumnType("datetime");

                entity.Property(e => e.Host).HasMaxLength(200);

                entity.Property(e => e.Pn)
                    .HasMaxLength(200)
                    .HasColumnName("PN");

                entity.Property(e => e.ProductName).HasMaxLength(200);

                entity.Property(e => e.Sn)
                    .HasMaxLength(200)
                    .HasColumnName("SN");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace GUI.Data.Models
{
    public partial class ProductsContext : DbContext
    {
        public ProductsContext()
        {
        }

        public ProductsContext(DbContextOptions<ProductsContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Device> Devices { get; set; } = null!;
        public virtual DbSet<Label> Labels { get; set; } = null!;
        public virtual DbSet<Printer> Printers { get; set; } = null!;
        public virtual DbSet<Test> Tests { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
//            if (!optionsBuilder.IsConfigured)
//            {
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
//                optionsBuilder.UseMySQL("Server=127.0.0.1;Database=Products;Uid=root;pwd=12345678");
//            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Device>(entity =>
            {
                entity.ToTable("devices");

                entity.HasIndex(e => e.LabelType, "LabelType_idx");

                entity.Property(e => e.Pn)
                    .HasMaxLength(45)
                    .HasColumnName("PN");

                entity.Property(e => e.ProductName).HasMaxLength(500);

                entity.HasOne(d => d.LabelTypeNavigation)
                    .WithMany(p => p.Devices)
                    .HasForeignKey(d => d.LabelType)
                    .HasConstraintName("LabelType");
            });

            modelBuilder.Entity<Label>(entity =>
            {
                entity.ToTable("labels");

                entity.Property(e => e.Labeltype).HasMaxLength(200);
            });

            modelBuilder.Entity<Printer>(entity =>
            {
                entity.ToTable("printer");

                entity.Property(e => e.Ipaddress)
                    .HasMaxLength(45)
                    .HasColumnName("IPAddress");

                entity.Property(e => e.Port).HasMaxLength(45);
            });

            modelBuilder.Entity<Test>(entity =>
            {
                entity.ToTable("tests");

                entity.HasIndex(e => e.ProductId, "ProductId_idx");

                entity.Property(e => e.TestName).HasMaxLength(500);

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.Tests)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("ProductId");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

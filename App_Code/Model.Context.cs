﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class BookshopEntities1 : DbContext
{
    public BookshopEntities1()
        : base("name=BookshopEntities1")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public virtual DbSet<Admin> Admins { get; set; }
    public virtual DbSet<Book> Books { get; set; }
    public virtual DbSet<Cart> Carts { get; set; }
    public virtual DbSet<Category> Categories { get; set; }
    public virtual DbSet<Discount> Discounts { get; set; }
    public virtual DbSet<Order> Orders { get; set; }
    public virtual DbSet<OrderDetail> OrderDetails { get; set; }
    public virtual DbSet<User> Users { get; set; }
}
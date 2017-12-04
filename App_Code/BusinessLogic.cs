using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
/// <summary>
/// Summary description for UserLogic
/// </summary>
public class BusinessLogic
{
    public BusinessLogic()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Boolean CheckUser(string username, string password)
    {
        using (BookshopEntities1 ctx = new BookshopEntities1())
        {
            if (ctx.Users.Where(x => x.UserName == username).Count() > 0)
            {
                if (ctx.Users.Where(x => x.UserName == username).First().Password == password)
                    return true;
                else
                    return false;
            }
            else
                return false;
        }
     
    }

    public Boolean CheckAdmin(string username, string password)
    {
        using (BookshopEntities1 ctx = new BookshopEntities1())
        {
            if (ctx.Admins.Where(x => x.UserName == username).Count() > 0)
            {
                if (ctx.Admins.Where(x => x.UserName == username).First().Password == password)
                    return true;
                else
                    return false;
            }
            
            else
                return false;
        }

    }

    public Boolean CreateAccount(string username, string password, string email, string phone, string address)
    {

        using (BookshopEntities1 ctx = new BookshopEntities1())
        {
            if (ctx.Users.Where(x => x.UserName == username).Count() > 0)
            {
                return false;
            }
            else
            {
                User user = new User();
                user.UserName = username;
                user.Password = password;
                user.Email = email;
                user.Phone = phone;
                user.Address = address;
                user.Role = "User";
                
                ctx.Users.Add(user);
                ctx.SaveChanges();
                return true;
            }
        }
    }

    public void UpdateBook(int bookID, string title, string categoryID, string ISBN, string author, string stock, string price)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Book b = entities.Books.Where(p => p.BookID == bookID).First<Book>();
            b.Title = title;
            b.CategoryID = Int32.Parse(categoryID);
            b.ISBN = ISBN;
            b.Author = author;
            b.Stock = Int32.Parse(stock);
            b.Price = Decimal.Parse(price);
            entities.SaveChanges();
        }
    }

    public void DeleteOrder(int bookID)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Book b = entities.Books.Where(p => p.BookID == bookID).First<Book>();
            entities.Books.Remove(b);
            entities.SaveChanges();
        }
    }

    public List<Book> BookList()
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            return entities.Books.ToList<Book>();
        }
    }

    public string GetCategoryName(int id)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Category cat = entities.Categories.Where(c => c.CategoryID == id).ToList<Category>()[0];
            return cat.Name;
        }
    }

    public List<Category> CategoryChoice()
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            return entities.Categories.ToList<Category>();
        }
    }

    public List<Order> ManageOrder_ListOrdersBy(string name)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            return entities.Orders.Where(p => p.UserName == name).ToList<Order>();
        }
    }
    public void ManageOrder_DeleteOrder(int orderId)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Order order = entities.Orders.Where(p => p.OrderID == orderId).First<Order>();
            entities.Orders.Remove(order);
            entities.SaveChanges();
        }
    }
    public int GetBookID(int id)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            OrderDetail od = entities.OrderDetails.Where(o => o.OrderID == id).ToList<OrderDetail>()[0];
            return (int)od.BookID;
        }
    }
    public int GetQuantity(int id)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            OrderDetail od = entities.OrderDetails.Where(o => o.OrderID == id).ToList<OrderDetail>()[0];
            return (int)od.Quantity;
        }
    }

    //public static List<Book> BookChoice()
    //{
    //    using (Model entities = new Model())
    //    {
    //        return entities.Books.ToList<Book>();
    //    }
    //}



    public void UpdateOrder(int orderID,
        string userName, DateTime orderDate, decimal price)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Order order = entities.Orders.Where(p => p.OrderID == orderID).First<Order>();
            order.OrderID = orderID;
            order.UserName = userName;
            order.OrderDate = orderDate;
            order.TotalPrice = price;

            entities.SaveChanges();
        }
    }

    //public static void DeleteOrder(int orderID)
    //{
    //    using (Model entities = new Model())
    //    {
    //        Order order = entities.Orders.Where(p => p.OrderID == orderID).First<Order>();
    //        entities.Orders.Remove(order);
    //        entities.SaveChanges();
    //    }
    //}

    public List<Cart> ListOrdersBy(string name)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            return entities.Carts.Where(x => x.Username == name).ToList();
        }
    }

    //public static string GetBookName(int id)
    //{
    //    using (Model entities = new Model())
    //    {
    //        Book books = entities.Books.Where(f => f.BookID == id).ToList<Book>()[0];
    //        return books.Title;
    //    }
    //}

    public void AddBook(
       string title, int categoryID, string ISBN, string author, int stock, decimal price) // "AddBook METHOD IS NEW "- ALEX
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Book b = new Book();
            b.Title = title;
            b.CategoryID = categoryID;
            b.ISBN = ISBN;
            b.Author = author;
            b.Stock = stock;
            b.Price = price;
            entities.Books.Add(b);
            entities.SaveChanges();
        }
    }

    public void AddOrder(int bookID, int quantity, decimal price)
    {
        BookshopEntities1 bk = new BookshopEntities1();

        Cart ct = new Cart();

        ct.BookID = bookID;
        ct.Quantity = quantity;
        ct.Price = price;

        bk.Carts.Add(ct);
        bk.SaveChanges();
    }

    public void deleteOrder(int bookID)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Cart cart = entities.Carts.Where(p => p.BookID == bookID).First<Cart>();
            entities.Carts.Remove(cart);
            entities.SaveChanges();
        }
    }

    public void updateOrder(string username, int quantity)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Cart cart = entities.Carts.Where(p => p.Username == username).First<Cart>();
            cart.Quantity = quantity;
            entities.SaveChanges();
        }
    }

    public static List<Discount> ListDiscount()
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            return entities.Discounts.ToList<Discount>();
        }
    }

    public static void DeleteDiscount(int discountId)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Discount discount = entities.Discounts.Where(p => p.discountID == discountId).First<Discount>();
            entities.Discounts.Remove(discount);
            entities.SaveChanges();
        }
    }

    public static void AddDiscount(DateTime startDate, DateTime endDate, decimal Discount)
    {
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Discount discount = new Discount
            {
                StartDate = startDate,
                EndDate = endDate,
                Discount1 = Discount

            };
            entities.Discounts.Add(discount);
            entities.SaveChanges();

        }
    }
}
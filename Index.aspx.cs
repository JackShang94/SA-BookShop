using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    public List<Book> booklist;
    decimal discount;
    BookshopEntities1 b = new BookshopEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
         discount = b.Discounts.ToList().First().Discount1;
         booklist = b.Books.ToList<Book>();
        for (int i = 0; i < booklist.Count(); i++)
        {
            booklist[0].Price = booklist[0].Price * discount;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var list = b.Books.Where(x=>x.Title.Contains(TextBox1.Text));
        if (list.Count()>0)
        {
            booklist = list.ToList();
            for (int i = 0; i < booklist.Count(); i++)
            {
                booklist[0].Price = booklist[0].Price * discount;
            }
        }
        else
        {
            Response.Write("<script>alert('No such book!')</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('No such book!')</script>");
    }
}
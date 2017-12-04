using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string ISBN;
    public string Title;
    public string Price;
    public string Stock;
    BookshopEntities1 context;
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = Context.User.Identity.Name;
        context = new BookshopEntities1();
        ISBN = Request.QueryString["ISBN"];
        Title = Request.QueryString["Title"];
        Price = Request.QueryString["Price"];
        Stock = Request.QueryString["Stock"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            Cart cart = new Cart();
            cart.Username = Context.User.Identity.Name;
            cart.BookID = context.Books.Where(x => x.ISBN == ISBN).First().BookID;
            cart.Quantity = Int32.Parse(DropDownList1.SelectedValue);
            cart.Price = decimal.Parse(Price) * cart.Quantity;
            context.Carts.Add(cart);
            context.SaveChanges();
            Response.Write("<script>alert('Add Success!')</script>");

        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}
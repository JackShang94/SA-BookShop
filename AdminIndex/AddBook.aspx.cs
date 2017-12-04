using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBook : System.Web.UI.Page
{
    string title;
    int categoryID;
    string ISBN;
    string author;
    int stock;
    decimal price;

    protected void Page_Load(object sender, EventArgs e)
    {
        List<int> dropDownNum = Enumerable.Range(1, 50).ToList();
        //DropDownList2.DataSource = dropDownNum;
        //DropDownList2.DataBind();

    }
    //TCIASP
    protected void Button1_Click(object sender, EventArgs e)
    {




    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        BusinessLogic bl = new BusinessLogic();
        title = BookTitle.Text;
        categoryID = Int32.Parse(DropDownList1.Text);
        ISBN = ISBNS.Text;
        author = Author.Text;
        stock = Convert.ToInt32(Stock.Text);
        price = Decimal.Parse(Price.Text);
        //Response.Redirect("Index.aspx");
        bl.AddBook(title, categoryID, ISBN, author, stock, price);
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class ViewCart : System.Web.UI.Page
{
    string name;
    decimal Price;
    int Quantity;

    protected void Page_Load(object sender, EventArgs e)
    {
        name = Context.User.Identity.Name;
        if (!IsPostBack)
        {
            BindGrid();
        }

        CalcVal(Price, Quantity);
    }

    public void CalcVal(decimal Price, int Quantity)
    {
        try
        {
            BookshopEntities1 bk = new BookshopEntities1();

            Label4.Text = bk.Carts.Where(x=> x.Username == name).Sum(x => x.Price * x.Quantity).ToString();
        }
        catch
        {
            Console.WriteLine("Nothing in Cart!");
            Label4.Text = "0";
        }
    }

    private void BindGrid()
    {
        BusinessLogic bl = new BusinessLogic();
        GridView1.DataSource = bl.ListOrdersBy(name);
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int bookID = (int)GridView1.SelectedDataKey.Value;
        using (BookshopEntities1 entities = new BookshopEntities1())
        {
            Cart cart = entities.Carts.Where(p => p.BookID == bookID).First<Cart>();
            GridView1.DataSource = new Cart[] { cart };
            GridView1.DataBind();
        }
    }


    protected void GridView2_RowUpdating2(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        string username = (row.FindControl("Label3") as Label).Text;
        string quantity = (row.FindControl("TextBox2") as TextBox).Text;
        string bID = username;
        int qnt = Convert.ToInt32(quantity);
        BusinessLogic bl = new BusinessLogic();
        bl.updateOrder(bID, qnt);
        GridView1.EditIndex = -1;
        BindGrid();
    }

    protected void GridView2_RowDeleting2(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        Label xxx = (Label)row.FindControl("Label1");
        string bookID = xxx.Text;
        //string bookID = (row.FindControl("TextBox1") as TextBox).;
        int bID = Convert.ToInt32(bookID);
        //string bookID = (row.FindControl("TextBox1") as TextBox).Text;
        //int bID = Convert.ToInt32(bookID);
        BusinessLogic bl = new BusinessLogic();
        bl.deleteOrder(bID);
        CalcVal(Price, Quantity);
        BindGrid();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();
    }

    protected void OnRowCancelingEdit(object sender, EventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }
}
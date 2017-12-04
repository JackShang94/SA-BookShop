using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageBooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    private void BindGrid()
    {
        BusinessLogic bl = new BusinessLogic();
        GridView1.DataSource = bl.BookList();
        GridView1.DataBind();
    }

    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();
    }

    protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        BusinessLogic bl = new BusinessLogic();
        int bookID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string title = (row.FindControl("TextBox1") as TextBox).Text;
        //string categoryID = (row.FindControl("TextBox6") as TextBox).Text;
        string categoryID = (row.FindControl("categoryID") as DropDownList).SelectedValue;
        string ISBN = (row.FindControl("TextBox2") as TextBox).Text;
        string author = (row.FindControl("TextBox3") as TextBox).Text;
        string stock = (row.FindControl("TextBox4") as TextBox).Text;
        string price = (row.FindControl("TextBox5") as TextBox).Text;
        bl.UpdateBook(bookID, title, categoryID, ISBN, author, stock, price);
        GridView1.EditIndex = -1;
        BindGrid();
    }

    protected void OnRowCancelingEdit(object sender, EventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        BusinessLogic bl = new BusinessLogic();
        int bookID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        bl.DeleteOrder(bookID);
        BindGrid();
    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        BusinessLogic bl = new BusinessLogic();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Book c = (Book)e.Row.DataItem;
            int id = c.CategoryID;
            string categoryName = bl.GetCategoryName(id);

            Label title = (e.Row.FindControl("Label1") as Label);
            if (title != null)
                title.Text = title.Text;

            DropDownList ddl = (e.Row.FindControl("categoryID") as DropDownList);
            if (ddl != null)
            {
                ddl.DataSource = bl.CategoryChoice();
                ddl.DataTextField = "Name";
                ddl.DataValueField = "CategoryID";
                ddl.DataBind();
                ddl.Items.FindByText(categoryName).Selected = true;
            }

            Label catName = (e.Row.FindControl("Label2A") as Label);
            if (catName != null)
                catName.Text = categoryName;

            Label ISBN = (e.Row.FindControl("Label3") as Label);
            if (ISBN != null)
                ISBN.Text = ISBN.Text;

            Label author = (e.Row.FindControl("Label4") as Label);
            if (author != null)
                author.Text = author.Text;

            Label stock = (e.Row.FindControl("Label5") as Label);
            if (stock != null)
                stock.Text = stock.Text;

            Label price = (e.Row.FindControl("Label6") as Label);
            if (price != null)
                price.Text = price.Text;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddBook.aspx");
    }
}
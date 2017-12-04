using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageOrders : System.Web.UI.Page
{

    string name;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (IsPostBack)
        {

            SqlDataSource3.SelectCommand = ViewState["command"].ToString();

        }
        else
        {
            ViewState["command"] = "SELECT * FROM [Order]";
            SqlDataSource3.SelectCommand = "SELECT * FROM [Order]";

        }
    }

    private void BindGrid()
    {
        BusinessLogic bl = new BusinessLogic();
        GridView1.DataSource = bl.ListOrdersBy(name);

    }


    protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    {



        GridViewRow row = GridView1.Rows[e.RowIndex];
        int orderID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string userName = (row.FindControl("TextBox1") as TextBox).Text;
        //DateTime orderDate = DateTime.Parse(GridView1.Rows[e.RowIndex].Cells[0]);

        decimal price = decimal.Parse((row.FindControl("TextBox3") as TextBox).Text);

        //BusinessLogic.UpdateOrder(orderID, userName, price);
        SqlDataSource3.UpdateCommand = "UPDATE [Order] SET [UserName] =" + "'" + userName + "'" + "," + "[TotalPrice] = " + price +
            "WHERE OrderID=" + orderID;

        GridView1.EditIndex = -1;

    }

    protected void OnRowCancelingEdit(object sender, EventArgs e)
    {
        GridView1.EditIndex = -1;

    }

    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;

    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int orderId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        SqlDataSource3.DeleteCommand = "DELETE FROM [Order] WHERE orderID=" + GridView1.DataKeys[e.RowIndex].Values[0];

    }
    protected void UserList_SelectedIndexChanged(object sender, EventArgs e)

    {
        SqlDataSource3.SelectCommand = "SELECT * FROM [Order] where [UserName] = " + "'" + UserList.Text + "'";
        ViewState["command"] = "SELECT * FROM [Order] where [UserName] = " + "'" + UserList.Text + "'";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT * FROM [Order]";
        ViewState["command"] = "SELECT * FROM [Order]";
    }
}
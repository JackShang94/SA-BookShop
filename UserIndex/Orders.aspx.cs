using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = Context.User.Identity.Name;
        //name = "WeiHan";

        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    private void BindGrid()
    {
        BusinessLogic bl = new BusinessLogic();


        GridView1.DataSource = bl.ManageOrder_ListOrdersBy(name);
        GridView1.DataBind();
    }
    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        BusinessLogic bl = new BusinessLogic();
        int orderId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        bl.ManageOrder_DeleteOrder(orderId);
        BindGrid();
    }
    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        BusinessLogic bl = new BusinessLogic();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Order orderDetail = (Order)e.Row.DataItem;
            int id = (int)orderDetail.OrderID;
            int bookID = bl.GetBookID(id);
            int bookQ = bl.GetQuantity(id);



            Label UserName = (e.Row.FindControl("Label1") as Label);
            if (UserName != null)
                UserName.Text = UserName.Text;

            Label OrderID = (e.Row.FindControl("Label2") as Label);
            if (OrderID != null)
                OrderID.Text = OrderID.Text;


            Label bookid = (e.Row.FindControl("Label2A") as Label);
            if (bookid != null)
                bookid.Text = bookID.ToString();

            Label quantity = (e.Row.FindControl("Label2B") as Label);
            if (quantity != null)
                quantity.Text = bookQ.ToString();


            Label OrderDate = (e.Row.FindControl("Label3") as Label);
            if (OrderDate != null)
                OrderDate.Text = OrderDate.Text;

            Label TotalPrice = (e.Row.FindControl("Label4") as Label);
            if (TotalPrice != null)
                TotalPrice.Text = TotalPrice.Text;
            //BindGrid();


        }
    }
}
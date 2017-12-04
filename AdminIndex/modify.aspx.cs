using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class modify : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //if (!IsPostBack)
        //{
            BindGrid();
        //}
    }

    private void BindGrid()
    {
        GridView1.DataSource = BusinessLogic.ListDiscount();
        GridView1.DataBind();
    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int discountId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

        BusinessLogic.DeleteDiscount(discountId);
        BindGrid();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime startdate = Calendar1.SelectedDate;
        DateTime enddate = Calendar2.SelectedDate;
        decimal discount = decimal.Parse(TextBox1.Text);

        //try
        //{
            BusinessLogic.AddDiscount(startdate, enddate, discount);
        BindGrid();
        //}
        //catch (Exception exp)
        //{
        //    Response.Write(exp.ToString());
        //}
    }
}
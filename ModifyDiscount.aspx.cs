using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModifyDiscount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            for (int i = 1; i <= 31; i++)
            {
                dlstartDate.Items.Add(i.ToString());
                endDate.Items.Add(i.ToString());

            }
            for (int i = 1; i <= 12; i++)
            {
                dlstartMonth.Items.Add(i.ToString());
                endMonth.Items.Add(i.ToString());
            }
            for (int i = 2017; i <= 2020; i++)
            {
                dlstartYear.Items.Add(i.ToString());
                endYear.Items.Add(i.ToString());

            }
            SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=Bookshop;Integrated Security=True");
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from [Discount]", connection);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            string startDateDB = dr[0].ToString();
            string endDateDB = dr[1].ToString();
            connection.Close();
            DateTime startDateTime;
            DateTime endDateTime;
            DateTime.TryParse(startDateDB, out startDateTime);
            DateTime.TryParse(endDateDB, out endDateTime);
            int startDate = startDateTime.Date.Day;
            int startMonth = startDateTime.Date.Month;
            int startYear = startDateTime.Date.Year;

            int endDateVal = endDateTime.Date.Day;
            int endMonthVal = endDateTime.Date.Month;
            int endYearVal = endDateTime.Date.Year;

            dlstartDate.SelectedValue = startDate.ToString();
            dlstartMonth.SelectedValue = startMonth.ToString();
            dlstartYear.SelectedValue = startYear.ToString();

            endDate.SelectedValue = endDateVal.ToString();
            endMonth.SelectedValue = endMonthVal.ToString();
            endYear.SelectedValue = endYearVal.ToString();
        }
        //string test = (new DateTime(int.Parse(endYear.Text), int.Parse(endMonth.Text), int.Parse(endDate.Text))).ToString("MM/dd/yyyy");
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=Bookshop;Integrated Security=True");
        connection.Open();
        SqlCommand cmd = new SqlCommand("update [Discount] set StartDate='" + dlstartMonth.Text+ " / "+dlstartDate.Text+" / "+dlstartYear.Text + "'," +
            "EndDate='" + endMonth.Text+ "/"+endDate.Text+"/"+endYear.Text + "', discount='"+TextBox1.Text+"'", connection);
        //"EndDate='" + (new DateTime(int.Parse(endYear.Text), int.Parse(endMonth.Text), int.Parse(endDate.Text))).ToString("MM/dd/yyyy") + "'", connection);
        cmd.ExecuteNonQuery();
 
        connection.Close();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        BusinessLogic bl = new BusinessLogic();
        if (!CheckBox1.Checked)
        {

            if (bl.CheckUser(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.SetAuthCookie(TextBox1.Text, false);
                if (Request.QueryString["ReturnUrl"] == null) {
                    Response.Redirect("/Index.aspx");
                }
                else if (Request.QueryString["ReturnUrl"].Contains("AdminIndex"))
                {
                    Response.Redirect("/Index.aspx");
                }
                else if (Request.QueryString["ReturnUrl"].Contains("UserIndex"))
                {
                    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
                }
            }
            else
            {
                Response.Write("<script>alert('incorrect username or password!')</script>");
            }
        }
        else if (CheckBox1.Checked)
        {
            if (bl.CheckAdmin(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.SetAuthCookie(TextBox1.Text, false);
                if (Request.QueryString["ReturnUrl"] == null)
                {
                    Response.Redirect("~/AdminIndex/ManageBooks.aspx");
                }
                else if (Request.QueryString["ReturnUrl"].Contains("AdminIndex"))
                {
                    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
                }
                else if (Request.QueryString["ReturnUrl"].Contains("UserIndex"))
                {
                    Response.Redirect("~/AdminIndex/ManageBooks.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('incorrect username or password!')</script>");
            }
        }
    }
}
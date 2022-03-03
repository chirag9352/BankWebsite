using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            adminname.Text = Session["name"].ToString();
        }
        else {
            Response.Redirect("Home.aspx");
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
    protected void addcustomer_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminSingupForm.aspx");
    }
    protected void homebutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHome.aspx");
    }
    protected void showcustomers_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminCustomers.aspx");
    }
    protected void transfermoney_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminTransfermoney.aspx");
    }
    protected void withdrawmoney_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminGetmoney.aspx");
    }
    protected void depositmoney_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminAddmoney.aspx");
    }
}

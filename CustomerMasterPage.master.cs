using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            string cusname = Session["name"].ToString();
            //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select first_name from Cus_info where username='" + cusname + "'", con);
            SqlCommand cmd2 = new SqlCommand("select last_name from Cus_info where username='" + cusname + "'", con);
            con.Open();
            string f = cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            string l = cmd2.ExecuteScalar().ToString();
            con.Close();
            customername.Text = f + " " + l;
        }
        else {
            Response.Redirect("Home.aspx");
        }
    }
    protected void logoutbutton_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
    protected void profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerProfile.aspx");
    }
    protected void transferpage_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerTransferMoney.aspx");
    }
    protected void tranhistorypage_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerTransactionHistory.aspx");
    }
    protected void FDpage_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerFixedDeposit.aspx");
    }
    protected void feedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerfeedback.aspx");
    }
}


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminCustomers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select concat(first_name,' ', last_name) as Name,phone,username from cus_info", con);

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            con.Close();
        }
        else {
            Response.Redirect("Home.aspx");
        }
    }
    protected void SearchButton_Click(object sender, EventArgs e)
    {
        if (SearchBox.Text != string.Empty)
        {
            //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from cus_info where username='" + SearchBox.Text + "'", con);
            SqlDataReader rd;
            con.Open();
            rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            con.Close();
            con.Open();
            cmd.CommandText = "select Acc_type as Account, bank_branch as Branch, Acc_no as Account_Number, Opening_balance as Balance from Acc_info where username='" + SearchBox.Text + "'";
            rd = cmd.ExecuteReader();
            GridView2.DataSource = rd;
            GridView2.DataBind();
            con.Close();
            con.Open();
            cmd.CommandText = "select acc_no from acc_info where username='" + SearchBox.Text + "'";
            string a = cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            cmd.CommandText = "select withdrawn as Withdrawn,deposited as Deposited,time as Time from tran_history where acc_no = '" + a + "'";
            rd = cmd.ExecuteReader();
            GridView3.DataSource = rd;
            GridView3.DataBind();
            con.Close();
        }
    }
}
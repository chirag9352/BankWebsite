using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerTransactionHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            string cusname = Session["name"].ToString();
            //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select acc_no from acc_info where username='"+cusname+"'",con);
            SqlDataReader rd;
            con.Open();
            string acc = cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            cmd.CommandText = "select withdrawn,deposited,time from tran_history where acc_no='" + acc + "'";
            rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            con.Close();
           
        }
        else { 
            Response.Redirect("Home.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminGetmoney : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null) {
            Response.Redirect("Home.aspx");
        }
    }

    protected void popupalert(string message)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('" + message + "')", true);
    }

    protected void withdraw_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select Opening_Balance from Acc_info where Acc_No='" + AccountNo.Text + "'", con);
        SqlDataReader rd;

        con.Open();
        rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            con.Close();
            con.Open();
            string amount = cmd.ExecuteScalar().ToString();
            con.Close();

            int a = Convert.ToInt32(amount);

            if (a < Convert.ToInt32(Amount.Text))
            {
                popupalert("Sorry you dont have that Amount in your Account!");
                Amount.Text = "";
            }
            else
            {
                a = a - Convert.ToInt32(Amount.Text);
                amount = a.ToString();
                con.Open();
                cmd.CommandText = "update Acc_info set Opening_Balance='" + amount + "' where Acc_no='" + AccountNo.Text + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                con.Open();
                cmd.CommandText = "insert into tran_history(acc_no,withdrawn,deposited,time) values('" + AccountNo.Text + "','" + Amount.Text + "','0','" + DateTime.Now.ToString() + "')";
                cmd.ExecuteReader();
                con.Close();
                popupalert("Transaction Successfull");
                AccountNo.Text = "";
                Amount.Text = "";
            }
        }
        else
        {
            popupalert("Invalid Account Number");
        }
    }

    protected void clear_Click(object sender, EventArgs e)
    {
        AccountNo.Text = "";
        Amount.Text = "";
    }

}
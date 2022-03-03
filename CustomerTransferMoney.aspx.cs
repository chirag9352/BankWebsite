using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerTransferMoney : System.Web.UI.Page
{
    string cusname;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            cusname = Session["name"].ToString();
        }
        else {
            Response.Redirect("Home.aspx");
        }
    }

    protected void popupalert(string message)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('" + message + "')", true);
    }

    protected void transfer_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        SqlDataReader rd;

        con.Open();
        cmd.CommandText = "select opening_balance from Acc_info where Acc_no='"+AccountNo.Text+"'";
        rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            con.Close();
            con.Open();
            cmd.CommandText = "select acc_no from Acc_info where username='" + cusname + "'";
            string a = cmd.ExecuteScalar().ToString();
            if (a != AccountNo.Text)
            {
                con.Close();
                con.Open();
                cmd.CommandText = "select opening_balance from Acc_info where Acc_no='" + AccountNo.Text + "'";
                int recieveramount = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                con.Open();
                cmd.CommandText = "select opening_balance from Acc_info where username='" + cusname + "'";
                int senderamount = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();

                if (senderamount >= Convert.ToInt32(Amount.Text))
                {
                    recieveramount = recieveramount + Convert.ToInt32(Amount.Text);
                    senderamount = senderamount - Convert.ToInt32(Amount.Text);
                    con.Open();
                    cmd.CommandText = "update acc_info set opening_balance='" + senderamount.ToString() + "' where username='" + cusname + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Open();
                    cmd.CommandText = "update Acc_info set Opening_Balance = '" + recieveramount.ToString() + "' where Acc_no='" + AccountNo.Text + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Open();
                    cmd.CommandText = "insert into tran_history values('"+AccountNo.Text+"','0','"+Amount.Text+"','"+DateTime.Now.ToString()+"')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Open();
                    cmd.CommandText = "select acc_no from Acc_info where username='" + cusname + "'";
                    string acc = cmd.ExecuteScalar().ToString();
                    con.Close();
                    con.Open();
                    cmd.CommandText = "insert into tran_history values('" + acc + "','" + Amount.Text + "','0','" + DateTime.Now.ToString() + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();

                    popupalert("Transaction Successfull!");
                    AccountNo.Text = "";
                    Amount.Text = "";

                }
                else
                {
                    con.Close();
                    popupalert("you dont have that much amount!");
                    Amount.Text = "";
                }
            }
            else {
                con.Close();
                popupalert("Its your account number IDIOT!");
            }
            
        }
        else {
            con.Close();
            popupalert("Account number does not exist!");
        }
        
    }
    protected void clear_Click(object sender, EventArgs e)
    {
        AccountNo.Text = string.Empty;
        Amount.Text = string.Empty;
    }
}
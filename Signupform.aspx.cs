using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Signupform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string gender = "none", acc_type = "RadioButton4.Text", bank_branch;
        string AccountNo;
        Random rn = new Random();
        
        long a = rn.Next(1111111,999999999);
        AccountNo = a.ToString();

        if (RadioButton1.Checked == true)
        { gender = RadioButton1.Text; }
        if (RadioButton2.Checked == true)
        { gender = RadioButton2.Text; }
        if (RadioButton3.Checked == true)
        { gender = RadioButton3.Text; }

        if (RadioButton4.Checked == true)
        { acc_type = RadioButton4.Text; }
        if (RadioButton5.Checked == true)
        { acc_type = RadioButton5.Text; }
        if (RadioButton6.Checked == true)
        { acc_type = RadioButton6.Text; }

        bank_branch = DropDownList1.SelectedItem.Text;

        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand("insert into Cus_info values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + gender + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox13.Text + "','" + username.Text + "')", con);
        SqlCommand cmd2 = new SqlCommand("insert into Acc_info values('" + acc_type + "','" + bank_branch + "','" + AccountNo + "','0','0','" + username.Text + "')", con);
        SqlCommand ifd = new SqlCommand("insert into fixed_deposit(acc_no,amount) values('" + AccountNo + "','0')", con);
        con.Open();
        ifd.ExecuteNonQuery();
        con.Close();
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        con.Open();
        cmd2.ExecuteNonQuery();
        con.Close();
        con.Open();
        cmd2.CommandText = "insert into login values('" + username.Text + "','" + password.Text + "')";
        cmd2.ExecuteNonQuery();
        con.Close();
        cleartext();
        Response.Redirect("Home.aspx");
    }
    protected void clear_Click(object sender, EventArgs e)
    {
        cleartext();
    }

    public void cleartext()
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox3.Text = null;
        TextBox4.Text = null;
        TextBox5.Text = null;
        TextBox6.Text = null;
        TextBox7.Text = null;
        TextBox8.Text = null;
        TextBox9.Text = null;
        TextBox13.Text = null;
        username.Text = null;
        password.Text = null;
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;
        RadioButton5.Checked = false;
        RadioButton6.Checked = false;
    }
}
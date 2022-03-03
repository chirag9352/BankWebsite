<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signupform.aspx.cs" Inherits="Signupform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        * {
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        body {
            background-color:#ead7c7;
        }

        #singupform{ 
            margin:10px auto;
            font-size: medium;
            height: 100%;
            width:60%;
            border: 3px solid #157575;
            border-radius:10px;
            box-shadow: 0px 2px 30px #777;
            background-color:white;
        }
        h2,h3 {
            color:#157575;
        }
        .formcolumns{
            padding:20px;        
        }
        .inputfield {
            width: 60%;
            border-top: none;
            border-left: none;
            border-right: none;
            outline: none;
            padding-top: 5px;
            background-color:transparent;
        }
        .submitform {
            padding:10px 25px;
            border: none;
            border-radius: 5px;
            background-color:#157575;
            color:white;
            cursor:pointer;
        }

        .clearform {
            padding:8px 25px;
            border: 2px solid #157575;
            border-radius: 5px;
            background-color: transparent;
            color:black;
            cursor:pointer;
        }

        /* footer */

        footer{
            background-color: #157575;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 30px 130px;
        }
        .footer-item1 img{
            padding: 0 3px;
        }

        .footer-item2{
            display: flex;
            flex-direction: column;
            font-size: medium;
            font-weight: 600;
        }

        .footer-item2>a{
            text-decoration: none;
            color: aliceblue;
            padding: 8px 0;
        }

        </style>

</head>
<body>
    <form runat="server" id="singupform" class="mainsectionitem">
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <img src="../images/Banklogo.png" alt="sorry" id="logo">
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <h2>Registration-form</h2>
                        </th>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <h3>1: Personal details</h3>
                        </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label> <br>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="formcolumns">
                            <asp:Label ID="Label2" runat="server" Text="Last Name :"></asp:Label> <br>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Label ID="Label3" runat="server" Text="Father's Name :"></asp:Label> <br>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="formcolumns">
                            <asp:Label ID="Label15" runat="server" Text="Gender : "></asp:Label> &nbsp&nbsp&nbsp
                            <asp:RadioButton ID="RadioButton1" runat="server" Text=" Male" ForeColor="Gray" GroupName="gender"></asp:RadioButton>&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:RadioButton ID="RadioButton2" runat="server" Text=" Female" ForeColor="Gray" GroupName="gender"></asp:RadioButton>&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:RadioButton ID="RadioButton3" runat="server" Text=" Others" ForeColor="Gray" GroupName="gender"></asp:RadioButton>&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Label ID="Label4" runat="server" Text="Date of Birth :"></asp:Label>&nbsp&nbsp&nbsp
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" BorderStyle="Outset" Width="40%"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Label ID="Label5" runat="server" Text="Email-ID : "></asp:Label> <br />
                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                        <td class="formcolumns">
                            <asp:Label ID="Label6" runat="server" Text="Phone-NO. : "></asp:Label> <br />
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Phone" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox6" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Label ID="Label10" runat="server" Text="Aadhar-NO. : "></asp:Label> <br />
                            <asp:TextBox ID="TextBox13" runat="server" TextMode="Number" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="TextBox13" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Label ID="Label7" runat="server" Text="Address : "></asp:Label> <br />
                            <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox7" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>


                        </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Label ID="Label8" runat="server" Text="City :"></asp:Label> <br>
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox8" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                        <td class="formcolumns">
                            <asp:Label ID="Label9" runat="server" Text="Pin code :"></asp:Label> <br>
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="inputfield" TextMode="Number"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox9" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">

                        </td>
                    </tr>




                    <tr>
                        <td class="formcolumns">
                            <h3>2: Account details</h3>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="formcolumns">
                            <asp:Label ID="Label16" runat="server" Text="Account Type : "></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:RadioButton ID="RadioButton4" runat="server" Text=" Saving Account" ForeColor="Gray" GroupName="actype"></asp:RadioButton>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:RadioButton ID="RadioButton5" runat="server" Text=" Salary Account" ForeColor="Gray" GroupName="actype"></asp:RadioButton>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:RadioButton ID="RadioButton6" runat="server" Text=" Current Account" ForeColor="Gray" GroupName="actype"></asp:RadioButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Label ID="Label17" runat="server" Text="Bank Branch :"></asp:Label>&nbsp&nbsp&nbsp
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="30%">
                                <asp:ListItem>Paota</asp:ListItem>
                                <asp:ListItem>Ratanada</asp:ListItem>
                                <asp:ListItem>BJS</asp:ListItem>
                                <asp:ListItem>PAL LINK ROAD</asp:ListItem>
                                <asp:ListItem>Mandore</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                    </tr>
                   
                    <tr>
                         <td class="formcolumns">
                            <asp:Label ID="Label13" runat="server" Text="Username :"></asp:Label>&nbsp&nbsp&nbsp
                            <asp:TextBox ID="username" runat="server" TextMode="SingleLine" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="username" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                         </td>
                        <td class="formcolumns">
                            <asp:Label ID="Label14" runat="server" Text="Password :"></asp:Label>&nbsp&nbsp&nbsp
                            <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="password" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                         </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Button ID="submit" CssClass="submitform" runat="server" Text="Submit" OnClick="submit_Click"></asp:Button>&nbsp&nbsp&nbsp
                            <asp:Button ID="clear" CssClass="clearform" runat="server" Text="Clear" OnClick="clear_Click" CausesValidation="false"></asp:Button>
                        </td>
                    </tr>
                </table>
            </form>

    <footer id="footer">
        <div class="footer-item1">
            <a href="https://www.facebook.com/" style="text-decoration: none;">
                <img src="../images/icon-facebook.png" alt="" />
            </a>
            <a href="https://www.instagram.com/chirag_singh2811/" style="text-decoration: none;">
                <img src="../images/icon-instagram.png" alt="" />
            </a>
            <a href="https://www.twitter.com/" style="text-decoration: none;">
                <img src="../images/icon-twitter.png" alt="" />
            </a>
            <a href="https://www.youtube.com/" style="text-decoration: none;">
                <img src="../images/icon-youtube.png" alt="" />
            </a>
          
        </div>
        <div class="footer-item2">
            <a href="About.aspx">About us</a>
            <a href="#">Contact us</a>
            <a href="Home.aspx">Home</a>
        </div>
        <div class="footer-item2">
            <a href="#">Carriers</a>
            <a href="#">Support</a>
            <a href="Privacy.aspx">Privacy Policy</a>
        </div>
    </footer>

</body>
    
</html>

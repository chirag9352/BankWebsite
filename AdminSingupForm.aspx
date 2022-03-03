<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSingupForm.aspx.cs" Inherits="AdminSingupForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #singupform{ 
            font-size: medium;
            height: 100%;
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



        #addcustomer {
            background-color : #157575  ;
            color: white;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="singupform" class="mainsectionitem">
                <table style="width: 100%;">
                    <tr>
                        <td class="formcolumns">
                            <h2>1: Personal details</h2>
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
                            <h2>2: Account details</h2>
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
                            <asp:Label ID="Label0" runat="server" Text="Account-NO :"></asp:Label>&nbsp&nbsp&nbsp
                            <asp:TextBox ID="TextBox10" runat="server" TextMode="Number" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox10" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                         </td>
                    </tr>
                    <tr>
                         <td class="formcolumns">
                            <asp:Label ID="Label11" runat="server" Text="Opening Balance :"></asp:Label>&nbsp&nbsp&nbsp
                            <asp:TextBox ID="TextBox11" runat="server" TextMode="Number" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="TextBox11" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                         </td>
                        <td class="formcolumns">
                            <asp:Label ID="Label12" runat="server" Text="Pin(4 digit) :"></asp:Label>&nbsp&nbsp&nbsp
                            <asp:TextBox ID="TextBox12" runat="server" TextMode="Number" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="TextBox12" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

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
                            <asp:TextBox ID="password" runat="server" TextMode="SingleLine" CssClass="inputfield"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="password" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                         </td>
                    </tr>
                    <tr>
                        <td class="formcolumns">
                            <asp:Button ID="submit" CssClass="submitform" runat="server" Text="Submit" OnClick="submit_Click" ></asp:Button>&nbsp&nbsp&nbsp
                            <asp:Button ID="clear" CssClass="clearform" runat="server" OnClick="clear_Click" CausesValidation="false" Text="Clear"></asp:Button>
                        </td>
                    </tr>
                </table>
            </div>
</asp:Content>


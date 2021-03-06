<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminAddmoney.aspx.cs" Inherits="AdminAddmoney" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .mainsectionitem table {
            text-align: justify;
            font-size: 25px;
            margin:auto;
            margin-top: 10%;
        }
        .mainsectionitem td {
            padding: 10px;
        }
        .addmoney-textbox {
            padding: 10px 5px 2px;
            width: 90%;
            border: 1px solid #157575;
            border-radius: 5px;
            background-color:transparent;
            outline:none;
        }
        .mainsectionitem .addmoney-depositbutton {
            border: none;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#157575;
            color: white;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
        .mainsectionitem .addmoney-depositbutton:hover {
                background-color: black;
                color: white;
                transition: 0.3s;
        }
        .mainsectionitem .addmoney-clearbutton {
            border: 1px solid #157575;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#ead7c7;
            color: black;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
        .mainsectionitem .addmoney-clearbutton:hover {
                background-color: black;
                color: white;
                transition: 0.3s;
        }


        #depositmoney {
            background-color : #157575;
            color: white;
        }  

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div runat="server" id="addmoney" class="mainsectionitem">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Account No. : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="AccountNo" CssClass="addmoney-textbox" runat="server" TextMode="Number"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AccountNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Amount : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Amount" CssClass="addmoney-textbox"  runat="server" TextMode="Number"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Amount" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="deposit" CssClass="addmoney-depositbutton" runat="server" OnClick="deposit_Click" Text="Deposit"></asp:Button>
                        </td>
                        <td>
                            <asp:Button ID="clear" CssClass="addmoney-clearbutton" runat="server" OnClick="clear_Click" Text="Clear" CausesValidation="false"></asp:Button>
                        </td>
                    </tr>
                </table>      
            </div>

</asp:Content>


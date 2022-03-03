<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminGetmoney.aspx.cs" Inherits="AdminGetmoney" %>

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
        .getmoney-textbox {
            padding: 10px 5px 2px;
            width: 90%;
            border: 1px solid #157575;
            border-radius: 5px;
            background-color:transparent;
            color:black;
            outline:none;
        }
        .mainsectionitem .getmoney-withdrawbutton {
            border: none;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#157575;
            color: white;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
        .mainsectionitem .getmoney-withdrawbutton:hover {
                 background-color: black;
                color: white;
                transition: 0.3s;
        } 
        .mainsectionitem .getmoney-clearbutton {
            border: 1px solid #157575;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#ead7c7;
            color: black;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
        .mainsectionitem .getmoney-clearbutton:hover {
                background-color: black;
                color: white;
                transition: 0.3s;
        } 

        #withdrawmoney {
            background-color : #157575;
            color: white;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div runat="server" id="getmoney" class="mainsectionitem">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Account No. : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="AccountNo" CssClass="getmoney-textbox" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AccountNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Amount : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Amount" CssClass="getmoney-textbox"  runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Amount" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="withdraw" CssClass="getmoney-withdrawbutton" runat="server" OnClick="withdraw_Click" Text="Withdraw"></asp:Button>
                        </td>
                        <td>
                            <asp:Button ID="clear" CssClass="getmoney-clearbutton" runat="server" OnClick="clear_Click" CausesValidation="false" Text="Clear"></asp:Button>
                        </td>
                    </tr>
                </table>
            </div>
    
</asp:Content>


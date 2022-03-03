<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerTransferMoney.aspx.cs" Inherits="CustomerTransferMoney" %>

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
        .transfermoney-textbox {
            padding: 10px 5px 2px;
            width: 90%;
            border: 1px solid #157575;
            border-radius: 5px;
            background-color:transparent;
            color:black;
            outline:none;
        }
        .mainsectionitem .transfermoney-debitbutton {
            border: none;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#157575;
            color: white;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
        .mainsectionitem .transfermoney-debitbutton:hover {
                 background-color: black;
                color: white;
                transition: 0.3s;
        } 
        .mainsectionitem .transfermoney-clearbutton {
            border: 1px solid #157575;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#ead7c7;
            color: black;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
        .mainsectionitem .transfermoney-clearbutton:hover {
                background-color: black;
                color: white;
                transition: 0.3s;
        }

        #transferpage {
            background-color : #157575;
            color: white;
        }
        #profile:hover {
            background-color : #dcbca3;
            transition: 0.2s;
        }
        #tranhistorypage:hover {
            background-color: #dcbca3;
            transition: 0.2s;
        }
        #FDpage:hover {
            background-color: #dcbca3;
            transition: 0.2s;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div runat="server" id="transfermoney" class="mainsectionitem">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Account No. : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="AccountNo" CssClass="transfermoney-textbox" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AccountNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Amount : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Amount" CssClass="transfermoney-textbox"  runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Amount" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="transfer" CssClass="transfermoney-debitbutton" runat="server" Text="Transfer" OnClick="transfer_Click"></asp:Button>
                        </td>
                        <td>
                            <asp:Button ID="clear" CssClass="transfermoney-clearbutton" runat="server" CausesValidation="false" Text="Clear" OnClick="clear_Click"></asp:Button>
                        </td>
                    </tr>
                </table>
            </div>
</asp:Content>


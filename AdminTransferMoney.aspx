<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminTransferMoney.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>

        .mainsectionitem {
            width:100%;
        }
        .mainsectionitem table {
            text-align: justify;
            font-size: 25px;
            margin: auto;
            margin-top: 5%;
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
        .mainsectionitem .transfermoney-transferbutton {
            border: none;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#157575;
            color: white;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
        .mainsectionitem .transfermoney-transferbutton:hover {
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


    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div runat="server" id="transfer" class="mainsectionitem">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="From : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="senderaccount" runat="server" CssClass="transfermoney-textbox" placeholder="Account NO." TextMode="Number"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="senderaccount" ForeColor="red"></asp:RequiredFieldValidator>                      

                        </td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="To : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="recieveraccount" runat="server" CssClass="transfermoney-textbox" placeholder="Account NO." TextMode="Number"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="recieveraccount" ForeColor="red"></asp:RequiredFieldValidator>                       

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Amount : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="amount" runat="server" CssClass="transfermoney-textbox" TextMode="Number"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="amount" ForeColor="red"></asp:RequiredFieldValidator>                       

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="transferbutton" CssClass="transfermoney-transferbutton" runat="server" OnClick="transferbutton_Click" Text="Transfer"></asp:Button>
                        </td>
                        <td>
                            <asp:Button ID="clear" CssClass="transfermoney-clearbutton" runat="server" OnClick="clear_Click" CausesValidation="false" Text="Clear"></asp:Button>
                        </td>
                    </tr>
                </table>
            </div>
</asp:Content>
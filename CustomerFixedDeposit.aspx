<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerFixedDeposit.aspx.cs" Inherits="CustomerFixedDeposit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #FDpage {
            background-color:#157575;
            color:white;
        }
        .mainsectionitem {
            padding:20px 200px;
        }
        table {
            margin:auto;
        }
            table td {
                padding:10px 15px;
                font-size:20px;
            }
        .textbox {
            padding: 10px 5px 2px;
            width: 90%;
            border: 1px solid #157575;
            border-radius: 5px;
            background-color:transparent;
            color:black;
            outline:none;
        }
        .submitbutton {
            border: none;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#157575;
            color: white;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
            .submitbutton:hover {
                background-color:black;
                color:white;
            }
        .clearbutton {
            border: 1px solid #157575;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#ead7c7;
            color: black;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
        .clearbutton:hover {
                background-color:black;
                color:white;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mainsectionitem">
        <h1 style="font-size:35px; margin-left:250px">Welcome Customer!</h1><br />
        <p style="font-size:20px; margin-left:250px">Here you can create your FD and get interest.<br />
           You will get 5% of interest for 1 year deposit<br />
           And 2% of interest for 6 month deposit.<br />
           Interest will be Add in your Account after the time period.</p>
        <br /><br />
        <hr />
        <br />
        <table>
            <tr>
                <td>
                    Enter Amount : 
                </td>
                <td>
                    <asp:TextBox ID="Amount" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Amount" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Duration : 
                </td>
                <td>
<asp:RadioButton ID="RadioButton1" Text=" 1 Year" runat="server" GroupName="duration"/>&nbsp&nbsp&nbsp<asp:RadioButton ID="RadioButton2" Text=" 6 Month" runat="server" GroupName="duration" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="submit" CssClass="submitbutton" runat="server" OnClick="submit_Click" Text="Submit" />
                </td>
                <td>
                    <asp:Button ID="clear" CssClass="clearbutton" runat="server" Text="Clear" CausesValidation="false" OnClick="clear_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


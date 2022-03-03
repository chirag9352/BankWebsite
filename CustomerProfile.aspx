<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerProfile.aspx.cs" Inherits="CustomerProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #profile {
            background-color : #157575;
            color: white;
        }
        ul {
            list-style-type:square;
            font-size:20px;
            margin-left:400px;
        }
        li {
        padding:10px;
        }
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mainsectionitem" style="display: block; padding:20px 100px">
        <h1 style="text-align:center; font-size:35px">Hello <asp:Label ID="name" runat="server" Text=""></asp:Label>!</h1> <br />
        <h2 style="text-align:center; font-size:25px">Account No. : <asp:Label ID="accountno" runat="server" Text=""></asp:Label></h2><br /><br />
        <hr />
        <br />
        <ul>
            <li>
                Balance (INR) : <asp:Label ID="balance" runat="server" Text=""></asp:Label>/-
            </li>
            <li>
                Father's Name : <asp:Label ID="fathername" runat="server" Text=""></asp:Label>.
            </li>
            <li>
                Phone No. : <asp:Label ID="phoneno" runat="server" Text=""></asp:Label>
            </li>
            <li>
                Username : <asp:Label ID="username" runat="server" Text=""></asp:Label>.
            </li>
            <li>
                Fixed Deposit : <asp:Label ID="Fdamount" runat="server" Text=""></asp:Label>/-
            </li>
        </ul>
            
    </div>
</asp:Content>


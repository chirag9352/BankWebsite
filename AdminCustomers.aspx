<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminCustomers.aspx.cs" Inherits="AdminCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
        #showcustomers {
           background-color : #157575;
            color: white;
        }
        

        .grid {
            text-align:center;
            border:2px solid #157575;
        }
            .grid td{
                padding:20px 0;
                border:2px 0 solid #157575;
                cursor:pointer;
            }

        
        .searchbox{
            padding:10px;
            border:1px solid #157575;
            border-radius:10px;
        }
        .searchbutton {
            padding:10px;
            background-color:#ead7c7;
            cursor:pointer;
            border:1px solid #157575;
            border-radius:10px;
        }

        h3 {
          padding:15px;
          color:#157575;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center runat="server" id="customerlist" class="mainsectionitem">
        <center style="padding:20px;">
            <asp:TextBox ID="SearchBox" CssClass="searchbox" runat="server" placeholder="Enter username"> </asp:TextBox>   <asp:Button ID="SearchButton" CssClass="searchbutton" runat="server" Text="Search" OnClick="SearchButton_Click"></asp:Button>
        </center>
        
        <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="grid" GridLines="Horizontal" AlternatingRowStyle-BackColor="#ead7c7"></asp:GridView>
        <br />
        <br />

        <asp:GridView ID="GridView2" runat="server" Width="80%" CssClass="grid" GridLines="Horizontal" AlternatingRowStyle-BackColor="#ead7c7"></asp:GridView>
        <br />
        <br />
          
        <asp:GridView ID="GridView3" runat="server" Width="60%" CssClass="grid" GridLines="Horizontal" AlternatingRowStyle-BackColor="#ead7c7"></asp:GridView>   
    </center>
</asp:Content>


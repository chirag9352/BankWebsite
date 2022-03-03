<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerTransactionHistory.aspx.cs" Inherits="CustomerTransactionHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .grid {
            text-align:center;
            border:2px solid #157575;
        }
            .grid td{
                padding:20px 0;
                border:2px 0 solid #157575;
                cursor:pointer;
            }
        center {
            padding:20px;
        }
        #tranhistorypage {
            background-color:#157575;
            color:white;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" Width="60%" CssClass="grid" GridLines="Horizontal" AlternatingRowStyle-BackColor="#ead7c7"></asp:GridView>
        </center>
</asp:Content>


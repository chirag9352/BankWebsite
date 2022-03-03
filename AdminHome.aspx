<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #homebutton {
            background-color : #157575;
            color: white;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Home" class="mainsectionitem"  style="display: block; padding:20px">
                <h1 style="text-align:center; margin:20px; font-size:35px">Hello Admin!</h1> <br />
                <hr />
                <br />
                <p style="text-align:justify; margin:auto; font-size:20px; width:40%">
                    From here you can manage all of core Internet Banking
                    settings. <br />
                    You can add/manage customers, view their transactions, edit their details and even delete them. <br />
                    Please keep in mind that with big power comes big responsibilty. Therefore please do not misuse your admin control
                    to create trouble.
                </p>
            </div>
</asp:Content>


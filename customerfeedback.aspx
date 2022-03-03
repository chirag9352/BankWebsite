<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="customerfeedback.aspx.cs" Inherits="customerfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
     <style>
        .mainsectionitem {
            display:flex;
            justify-content: space-between;
            align-items:center;
            
            flex-direction: column;
            width:100%;
            height:60%;
            padding:50px;
            
        }

         .title {
            padding: 15px 10px;
            width: 30%;
            border: 1px solid #157575;
            border-radius: 5px;
            background-color:transparent;
            color:black;
            outline:none;
         }

         .message {
            padding: 15px 10px;
            width: 30%;
            height:40%;
            border: 1px solid #157575;
            border-radius: 5px;
            background-color:transparent;
            color:black;
            outline:none;
         }

        .sendbutton {
            border: none;
            padding: 8px 30px;
            border-radius: 25px;
            background-color:#157575;
            color: white;
            cursor: pointer;
            font-size: 15px;
            text-align: center;
        }
            .sendbutton:hover {
                background-color:black;
                color:white;
            }

         #feedback {
            background-color : #157575;
            color: white;
         }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mainsectionitem">
        <asp:TextBox ID="TextBox1" CssClass="title" runat="server" placeholder="Title"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="message" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="send" CssClass="sendbutton" runat="server" Text="send" OnClick="send_Click" />
    </div>
</asp:Content>


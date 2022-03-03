<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .contact {
            display:flex;
            justify-content:center;
            align-items:center;
            font-size:larger;
            padding: 100px 180px;
            height:100vh;
            background-color:#faf2ed;
            
        }
            .contact table tr th,td {
                padding:30px;
                text-align:left;
                border:1px solid #157575;   
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contact">
        <table>
            <tr>
                <th style="border-bottom-right-radius:20px; border-top-left-radius:20px;">
                    Chirag singh
                </th>
                <td style="border-bottom-left-radius:20px; border-top-right-radius:20px;">
                    Email &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp chiragsinghr71@gmail.com<br /><br />
                    Phone No. &nbsp:&nbsp 7374987319
                </td>
            </tr>
            <tr>
                <th style="border-bottom-right-radius:20px; border-top-right-radius:20px;">
                    Harsh Gaur
                </th>
                <td style="border-bottom-left-radius:20px; border-top-left-radius:20px;">
                    Email &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp Harshgaur@gmail.com<br /><br />
                    Phone No. &nbsp:&nbsp 7575456789
                </td>
            </tr>
            <tr>
                <th style="border-top-right-radius:20px; border-bottom-left-radius:20px;">
                    Kuldeep Amrawat
                </th>
                <td style="border-top-left-radius:20px; border-bottom-right-radius:20px;">
                    Email &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp Kuldeep@gmail.com<br /><br />
                    Phone No. &nbsp:&nbsp 9283647280
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


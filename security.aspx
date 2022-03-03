<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="security.aspx.cs" Inherits="security" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       .text-area{
            text-align: justify;
            padding: 100px 180px;
            line-height: 1.5;
            font-size: 17px;
            color: #444;
            background-color:#faf2ed;
        }
        .text-area h1{
            text-align: center;
            font-size: 30px;
            padding: 20px;
            color: #222;
        }

   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <section class="text-area">
            <h1>Security</h1>
            <p>
                Conduct all your NetBanking transactions on the Internet in a safe and secure environment. Indian Bank uses 128-bit Secure Socket Layer (SSL) technology, which is the highest level of security commercially available. Plus, a host of internal control measures and processes ensure that your transactions remain confidential. 
            </p><br />
            <p>
                Indian Bank currently offers its NetBanking customers some of the services provided through its regular branch channels. These services can broadly be clubbed as query-based and transaction-based. Examples of query-based transactions include checking account balances, update on cheque status/ cheque book status, and viewing account statements. Transaction-based services include stop payment on cheque, requesting a Demand Draft / Managers Cheque / new Fixed Deposit / Funds Transfers. Bank further provides utility payment services and merchant payment services for all registered Netbanking customers. The Bank of late has provided all net banking customers the EFT facility offered by RBI through NetBanking.
            </p><br />
            <p>
                While NetBanking is essentially an additional banking channel that we offer our customers for their convenience, Indian Bank has assessed the risk from the operational as well as from a technology and security perspective.Some of the risks that we have considered are mentioned below:
            </p><br />
            <p>
                <ul>
                    <li>
                        <b>Authentication of Transaction</b> by the customer is a key risk area from an operational perspective. As a precautionary measure, we have installed a multi-level process, whereby customers can perform NetBanking transactions only if they are valid account holders, and then by using a combination of a unique Customer ID, and a unique randomly generated password known only to the customer which he can change to his/her convenience. The onus of maintaining the confidentiality of the password is on the customer. Further, customers can only do financial transactions between accounts where they already possess normal operational rights
                    </li>
                    <li>
                        <b>Repudiation of transaction</b> by the customer is another risk that has been identified. However, customers can log in only by using a unique combination of Customer ID and Password, after which transactions can be carried out. The Bank has already implemented 128-bit encryption, which is the highest level of security commercially available.
                    </li>
                </ul>
            </p><br />
            <p>
                <b>The operational and internal control measures we have in Netbanking include:</b>
                <ul>
                    <li>
                        Access to Internet banking provided only based on application and valid customer ID. NetBanking password - issued to customers only on specific request.
                    </li>
                    <li>
                        The password - generated using an internationally validated algorithm and printed on tamper-proof stationery. 
                    </li>
                    <li>
                        Access to customer information - given based on a combination of a unique Customer ID and password. Therefore, a customer can access account information only on those accounts where he has a relationship with the bank (Account Holder). Whereever, the customer has opted to avail the third party fund transfer services of the Bank, bank provides a window for transfer of funds to any account holder within the bank and who does not share any relationship with the customer's account. All correspondence on account of transactions originating from NetBanking is sent to the customer's address registered with the Bank and not to any third party address. Account related customer information or instructions which are confidential in nature are not solicited / accepted over email. Customer logins and activities are tracked and the same are available for future investigation. 
                    </li>
                </ul>
            </p><br />
            <p>
                Citizens Co-operative Bank follows a strict policy of Backup, Storage and Retrieval for all its systems, which includes NetBanking. 
            </p>

        </section>
    </div>
</asp:Content>


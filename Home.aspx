<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .section1{
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 30px;
            padding-top: 100px;
            height:100vh;
            background-color:#faf2ed;         
        }

        .text-area{
            font-weight: 600;
            position: relative;
            margin-left: 85px;
            color: hsl(233, 26%, 24%);
                        
        }
        .text-area>h1{
            text-shadow: -4px 4px 5px #777;
        }
        .why-us{
            padding: 100px 120px 150px 120px;
            width: 100%;
            background-color: #ead7c7;
        }
        .why-us>h1{
            font-size: 40px;
            font-weight: 800;
            margin-bottom: 15px;
            color: hsl(233, 26%, 24%);
        }
        .why-us>p{
            color: #555;
            font-weight: 700;
        }
        .features{
            display: flex;
            justify-content: space-evenly;
            align-items: flex-start;
            width: 100%;
            padding-left: 26px;
            background-color: #ead7c7;
        }
        .feature-item>h1{
            font-size: 30px;
            font-weight: 800;
            margin-top: 20px;
            margin-bottom: 20px;
            color: hsl(233, 26%, 24%);
        }
        .feature-item>p{
            color: #555;
            font-weight: 600;
        }
        .blog-section {
            width: 100%;
            padding: 130px 90px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            background-color: #ead7c7;
            }
            .article-container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            }
            .blog-section > h1 {
            font-size: 45px;
            margin-left: 1.25rem;
            font-weight: 800;
            margin-bottom: 10px;
            color: hsl(233, 26%, 24%);
            }
            .article{
            height: max-content;
            width: 250px;
            margin-top: 20px;
            margin-left: 15px;
            background-color: #fff;
            }
            .article > img {
            width: 250px;
            height: 250px;
            }
            .content {
            padding: 15px;
            }
            .content > p {
            color: hsl(233, 8%, 62%);
            font-weight: 400;
            font-size: 14px;
            }
            .content > h4 {
            color: hsl(233, 26%, 24%);
            padding-bottom: 5px;
            padding-top: 5px;
            }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <main>
        <section class="section1">

            <!-- text -->
            <div class="text-area">
                <h1 style="font-size: 50px;">Next generation <br>
                    digital banking</h1>
                <p style="margin-top:10px; line-height: 25px; color: #555   ;">
                    Take your financial life online. Your Indian bank account <br>
                    will be a one-stop-shop for spending,saving,<br>
                    budgeting,investing, and much more.
                </p>
            </div>
            <img src="../images/Homepageimage.jpg" alt="#" style="height: 500px; width: 550px;">

        </section>
        <section class="why-us">
            <h1>Why choose Indian Bank?</h1>
        <p>
            We leverage open banking to turn your bank account into your financial hub. <br>
            Control your finances like never before.
        </p>
</section>

<section class="features">
    <div class="feature-item">
        <img src="../images/online.png" alt="">
        <h1>Online Banking</h1>
        <p>Our modern web and mobile <br>
            applications allow you to keep<br>
            track of your finances whereever<br>
            you are in the world.</p><br>
        </div>
    <div class="feature-item">
        <img src="../images/budget.png" alt="">
        <h1>Simple Budgeting</h1>
        <p>See exactly where your money<br>
            goes every month.Recieve<br>
            notifications when you're close to<br>
            hitting your limits.</p>
        </div>
    <div class="feature-item">
        <img src="../images/onboarding.png" alt="">
        <h1>Fast Onboarding</h1>
        <p>We don't do branches.Open your<br>
            accound minutes online and start<br>
            taking controll of your finances<br>
            right away.</p>
    </div>
    <div class="feature-item">
        <img src="../images/api.png" alt="">
        <h1>Open API</h1>
        <p>Manage your savings, investments,<br>
            pension and much more from one<br>
            account.Tracking your money has<br>
            never been easier.</p>
    </div>
</section>

<section class="blog-section">
    <h1>Latest Articles</h1>
    <div class="article-container">
      <div class="article">
        <img src="../images/image-currency.jpg" alt="" />
        <div class="content">
          <p>Arslan Jajja</p>
          <h4>Recieve money in any<br />
            currency with no fees.</h4>
          <p>The world is getting smaller and<br />
            we are becoming more mobile.So,<br />
            why should you be forced to only<br />
            recieve money in a single...</p>
        </div>
      </div>
      <div class="article">
        <img src="../images/image-restaurant.jpg" alt="" />
        <div class="content">
          <p>Arslan Jajja</p>
          <h4
            >Recieve money in any<br />
            currency with no fees.</h4>
          <p>Our simple budgeting feature<br />
            allow to seperate out your<br />
            spending and set realistic limits<br />
            each month.That means you...</p>
        </div>
      </div>
      <div class="article">
        <img src="../images/image-plane.jpg" alt="" />
        <div class="content">
          <p>Arslan Jajja</p>
          <h4>Take Your Indian bank card<br />whereever you go.</h4>
          <p>We want you to enjoy your travels.<br />This is why we don't
            charge any<br />fees on purchase while you're <br />abroad.We'll
            even show you...</p>
        </div>
      </div>
      <div class="article">
        <img src="../images/image-confetti.jpg" alt="" />
        <div class="content">
          <p>Arslan Jajja</p>
          <h4>Our invite-only Beta<br />accounts are live now!</h4>
          <p>After a lot of hardwork by the<br />
            whole team,we're excited to launch<br />
            our closed beta.It's easy to request <br />an invite through the
            site.</p>
        </div>
      </div>
    </div>
  </section>
    </main>
    
</asp:Content>


<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/BankMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BankApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BankMainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome To Piggy Bank</h1>
        <p class="lead">Balance:</p>
        <p><asp:Label ID="lblBalance" runat="server">300</asp:Label></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Mumbai</h2>
            <p>
                GF, Gresham House United India Life Bldg,<br />
                Sir Phirozshah Mehta Rd, Mumbai,<br />
                Maharashtra 400023.
            </p>
            
        </div>
        <div class="col-md-4">
            <h2>Chennai</h2>
            <p>
                84 Rajaji Salai,<br />
                Chennai, <br />
                Tamilnadu 600 001.
            </p>
            
        </div>
        <div class="col-md-4">
            <h2>Delhi</h2>
            <p>
                11sansad Marg, <br />
                New Delhi 110 001.
            </p>
            
        </div>
    </div>

</asp:Content>

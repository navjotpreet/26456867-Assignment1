<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.Master" AutoEventWireup="true" CodeBehind="Deposit.aspx.cs" Inherits="BankApplication.Deposit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="images/favlogo.png">
    <link href="Content/style.css" rel="stylesheet" />
    <link href="Content/Mainstyle.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BankMainContent" runat="server">
    <div class="container adjust-form">
    <div class="form-horizontal">
        <center>
            <h2 class="fix-heading">Deposit Money</h2>
        </center>
        <br />
        <br />
        <div class="col-md-offset-3 col-md-5 ">
            <div class="form-group">
                <label class="control-label fix-label col-sm-4">Account Holder Name</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtAccountHolderName" class="form-control" ToolTip="You can not change this property" ReadOnly="true" BackColor="LightGray" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label fix-label col-sm-4">Account number</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtAccountNumber" class="form-control" ReadOnly="true" ToolTip="You can not change this property" BackColor="LightGray" runat="server" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label fix-label col-sm-4">Amount</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtAmount" class="form-control" runat="server" TextMode="Number"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAmount" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button class="btn btn-success" ID="btnDeposit" runat="server" Text="Deposit" OnClick="btnDeposit_Click" />
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.Master" AutoEventWireup="true" CodeBehind="TransferFunds.aspx.cs" Inherits="BankApplication.TransferFunds" %>

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
        <br>
        <br>
        <br>
        <center>
            <h2 class="fix-heading">Account Transfer Money</h2>
        </center>
        <div class="col-md-offset-3 col-md-5 ">
            <div class="form-group">
                <label class="control-label fix-label col-sm-4" for="email">Account Number</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtAccountNmber" class="form-control" placeholder="Enter Account number" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAccountNmber" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAccountNmber" ErrorMessage="Account Number can only be upto 12 digit" ForeColor="Red" ValidationExpression="[0-9]{12,12}"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label fix-label col-sm-4" for="email">IFSC</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtIfsc" class="form-control" placeholder="Enter IFSC" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtIfsc" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label fix-label col-sm-4" for="email">Account Holder</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtAccountHolder" class="form-control" placeholder="Account Holder" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAccountHolder" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAccountHolder" ErrorMessage="Name can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label fix-label col-sm-4" for="email">Amount</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtTAmount" class="form-control" placeholder="Enter Amount" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtTAmount" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button class="btn btn-success" ID="txtSend" runat="server" Text="Send" OnClick="txtSend_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

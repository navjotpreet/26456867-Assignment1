<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="BankApplication.ChangePassword" %>
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
     <div class="col-md-offset-3 col-md-5">
        <center>
            <h3>Login</h3>
        </center>
        <br>
          <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label fix-label col-sm-6" for="email">Enter Old Password</label>
                        <div class="col-sm-6">
                            <asp:TextBox class="form-control" ID="txtOldPassword" placeholder="Enter Old Password" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtOldPassword" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtOldPassword" ErrorMessage="Password can only contain numbers or !@#$% length is minimum 8 charcters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9!@#$^]{8,}"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label fix-label col-sm-6" for="email">Enter New Password</label>
                        <div class="col-sm-6">
                            <asp:TextBox class="form-control" ID="txtNewPassword" placeholder="Enter New Password" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtNewPassword" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="Password can only contain numbers or !@#$% length is minimum 8 charcters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9!@#$^]{8,}"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label fix-label col-sm-6" for="email">Confirm Password</label>
                        <div class="col-sm-6">
                            <asp:TextBox class="form-control" ID="txtConfirmPassword" placeholder="Confirm Password" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtConfirmPassword" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Password can only contain numbers or !@#$% length is minimum 8 charcters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9!@#$^]{8,}"></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server"  ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password Mismatch"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button class="btn-success loginbtn-fix" ID="btnChangePassword" runat="server" Text="ChangePassword" OnClick="btnChangePassword_Click" />
                        </div>
                    </div>
                </div>

        </div>
    </div>
</asp:Content>

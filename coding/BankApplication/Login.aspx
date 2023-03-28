<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BankApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="images/favlogo.png">
    <link href="Content/style.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <div class="col-md-offset-3 col-md-6 col-md-offset-3 fix-login">
        <center>
            <h3>Login</h3>
        </center>
        <br>
        <div class="login-window">
            <div class="admin">

                <form class="form-horizontal" runat="server">
                    <div class="form-group">
                        <label class="control-label fix-label col-sm-4" for="email">User Name</label>
                        <div class="col-sm-8">
                            <asp:TextBox class="form-control" ID="txtUserName" placeholder="Enter User Name" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label fix-label col-sm-4" for="email">Enter Password</label>
                        <div class="col-sm-8">
                            <asp:TextBox class="form-control" ID="txtPassword" placeholder="Enter Password" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button class="btn-success loginbtn-fix" ID="txtLogin" runat="server" Text="Login" OnClick="txtLogin_Click" />
                            <a href="CreateAccount.aspx" class="btn-fix">Create an Account</a>

                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</body>
</html>

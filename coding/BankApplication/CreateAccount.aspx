<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="BankApplication.CreateAccount1" %>

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
    <!--start create an account form-->
    <div class="container adjust-form col-md-offset-3 col-md-6 col-md-offset-3 fix-login">
        <br/>
        <br/>
        <br/>
        <center>
            <h2 class="fix-heading">Create New User Account</h2>
        </center>
        <br/>
        <br/>
        <form class="form-horizontal" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
            </asp:ScriptManager>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">Name</label>
                    <div class="col-sm-8">
                        <asp:TextBox class="form-control" placeholder="Enter Name" ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name can only be alphabets" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">User Name</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtRUserName" class="form-control"  placeholder="Enter User number" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtRUserName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">Password</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtRPassword" class="form-control" TextMode="Password"  placeholder="Enter Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtRPassword" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtRPassword" ErrorMessage="Password can only contain numbers or !@#$% length is minimum 8 charcters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9!@#$^]{8,}"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">Mobile Number</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtMobile" class="form-control" placeholder="Enter Mobile number" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtMobile" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile No. should be minimum 10 digits" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10,10}"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">Email</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtEmail" class="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtEmail" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a Valid Email!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">DOB</label>
                    <div class="col-sm-8">
                        <asp:TextBox class="form-control" ID="txtDob" placeholder="Enter DOB" runat="server" TextMode="Date"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtDob" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDob" ErrorMessage="DOB should be between 1920-2005" ForeColor="Red" SetFocusOnError="True" MaximumValue="2005/01/01" MinimumValue="1920/12/31" Type="Date"></asp:RangeValidator>
                    </div>
                </div>
                
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">Enter Address</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtaddress" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtaddress" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">Gender</label>
                    <div class="col-sm-8">
                        <asp:DropDownList class="form-control" ID="ddlgender" runat="server">
                                <asp:ListItem InitialValue="-SELECT-">-SELECT-</asp:ListItem>
                                <asp:ListItem>MALE</asp:ListItem>
                                <asp:ListItem>FEMALE</asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="ddlgender" ForeColor="Red" SetFocusOnError="True" InitialValue="-SELECT-"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">Branch</label>
                    <div class="col-sm-8">
                        <asp:DropDownList class="form-control" ID="ddlBranch" runat="server">
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="ddlBranch" ForeColor="Red" SetFocusOnError="True" InitialValue="-SELECT-"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4">Account Type</label>
                    <div class="col-sm-8">
                        <asp:DropDownList class="form-control" ID="ddlAccounType" runat="server">
                            <asp:ListItem>-SELECT-</asp:ListItem>
                                <asp:ListItem Value="1">Current</asp:ListItem>
                                <asp:ListItem Value="2">Saving</asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="ddlAccounType" ForeColor="Red" SetFocusOnError="True" InitialValue="-SELECT-"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-4 col-sm-offset-4 ">
                    <asp:Button class="btn btn-success" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    <a href="Login.aspx" class="btn-fix">Go To Login</a>
                </div>
            </div>

        </form>
    </div>
    <!--End of Form-->
</body>
</html>

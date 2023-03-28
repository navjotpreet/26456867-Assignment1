<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.Master" AutoEventWireup="true" CodeBehind="AccountSummary.aspx.cs" Inherits="BankApplication.AccountSummary" %>

<asp:Content ID="Content2" ContentPlaceHolderID="BankMainContent" runat="server">
    <script src="Scripts/jquery.dataTables.min.js"></script>
    <link href="Content/jquery.dataTables.css" rel="stylesheet" />
    <div class="container adjust-form">
        <script type="text/javascript">
            $(function () {
                $("[id*=gvStatement]").DataTable(
                    {
                        bLengthChange: true,
                        lengthMenu: [[5, 10, -1], [5, 10, "All"]],
                        bFilter: true,
                        bSort: true,
                        bPaginate: true
                    });
            });
        </script>

        <center>
            <h2 class="fix-heading">Create User Account Summary</h2>
        </center>
        <br />
        <br />
        <br />
        <div class="form-horizontal">
            <div class="col-md-offset-3 col-md-5 ">
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4" for="email">Start Date</label>
                    <div class="col-sm-8">
                        <asp:TextBox class="form-control" ID="txtStartDate" placeholder="Start Date" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtStartDate" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label fix-label col-sm-4" for="email">End Date</label>
                    <div class="col-sm-8">
                        <asp:TextBox class="form-control" ID="txtEndDate" placeholder="Start Date" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtEndDate" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button class="btn btn-success" ID="btnSubmitStatement" runat="server" Text="Submit" OnClick="btnSubmitStatement_Click" />
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-offset-3 col-md-5 ">
            <asp:GridView ID="gvStatement" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>

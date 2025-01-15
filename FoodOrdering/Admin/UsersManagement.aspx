<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UsersManagement.aspx.cs" Inherits="FoodOrdering.Admin.UsersManagement" %>

<%@ Import Namespace="FoodOrdering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-inner-content pt-0">
        <div class="align-align-self-end">
            <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
        </div>
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-block">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-4 col-lg-4">
                                            <h4 class="sub-title">Edit User</h4>
                                            <div>
                                                <div class="form-group">
                                                    <label>User ID (view-only)</label>
                                                    <div>
                                                        <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                        <asp:HiddenField ID="hdnID" runat="server" Value="0" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <div>
                                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Name" required></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Username</label>
                                                    <div>
                                                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username" required></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <div>
                                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email" required></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Mobile</label>
                                                    <div>
                                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter Mobile"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Address</label>
                                                    <div>
                                                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Postcode</label>
                                                    <div>
                                                        <asp:TextBox ID="txtPostcode" runat="server" CssClass="form-control" placeholder="Enter Postcode"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="pb-5">
                                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                                                    &nbsp;
                                                   
                                                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary" CausesValidation="false" OnClick="btnClear_Click" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-md-8 col-lg-8 mobile-inputs">
                                            <h4 class="sub-title">User List</h4>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
                                                    <asp:Repeater ID="rUser" runat="server" OnItemCommand="rUser_ItemCommand">
                                                        <HeaderTemplate>
                                                            <table class="table data-table-export table-hover nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="table-plus">Name</th>
                                                                        <th>Username</th>
                                                                        <th>Email</th>
                                                                        <th>Mobile</th>
                                                                        <th>CreatedDate</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td><%# Eval("Name") %></td>
                                                                <td><%# Eval("Username") %></td>
                                                                <td><%# Eval("Email") %></td>
                                                                <td><%# Eval("Mobile") %></td>
                                                                <td><%# Eval("CreatedDate") %></td>
                                                                <td>
                                                                    <asp:LinkButton ID="lnkEdit" Text="Edit" runat="server" CssClass="badge badge-primary" 
                                                                        CausesValidation="false" CommandArgument='<%# Eval("UserId") %>' CommandName="edit" />
                                                                    <asp:LinkButton ID="lnkDelete" Text="Delete" runat="server" CssClass="badge bg-danger" 
                                                                        CausesValidation="false" CommandArgument='<%# Eval("UserId") %>' CommandName="delete" OnClientClick="return confirm('Are you sure you want to delete this user?');" />
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </tbody>
                                                            </table>
                                                       
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

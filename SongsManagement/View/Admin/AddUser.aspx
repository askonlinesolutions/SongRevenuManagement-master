<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="SongsManagement.View.Admin.AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtUserName" runat="server">User Name</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtUserName" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtPassword">Password</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtPassword" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="ddlUserType">User Type</label>
        <div class="col-lg-10">
            <asp:DropDownList ID="ddlUserType" class="form-control" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtFirstName">First Name</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtFirstName" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtMiddleName">Middle Name</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtMiddleName" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtLastName">Last Name</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtLastName" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>

    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtDisplayName">Display Name Name</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtDisplayName" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtPro">Pro</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtPro" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtPro">IP</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtIP" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtPhone">Phone</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtPhone" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtEmail">Email</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtEmail" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>

    
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtAddress">Address</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtAddress" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>

    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtCity">City</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtCity" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-form-label col-lg-2" for="txtState">State</label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtState" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    

    <div class="form-group row">
      <label class="col-form-label col-lg-2" for="fuPhoto">Photo</label>
        <div class="col-lg-10">
             <asp:FileUpload ID="fuPhoto" runat="server" type="file" class="form-control h-auto"/>
          
        </div>
    </div>
















</asp:Content>

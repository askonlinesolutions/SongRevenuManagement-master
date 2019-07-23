﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="SongsManagement.View.Admin.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="form-group">
        <div class="row">
            <div class="col-md-6">
                <label>Username</label>
                <input type="text" value="Eugene" class="form-control">
            </div>
            <div class="col-md-6">
                <label>Full name</label>
                <input type="text" value="Kopyov" class="form-control">
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-md-6">
                <label>Address line 1</label>
                <input type="text" value="Ring street 12" class="form-control">
            </div>
            <div class="col-md-6">
                <label>Address line 2</label>
                <input type="text" value="building D, flat #67" class="form-control">
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-md-4">
                <label>City</label>
                <input type="text" value="Munich" class="form-control">
            </div>
            <div class="col-md-4">
                <label>State/Province</label>
                <input type="text" value="Bayern" class="form-control">
            </div>
            <div class="col-md-4">
                <label>ZIP code</label>
                <input type="text" value="1031" class="form-control">
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-md-6">
                <label>Email</label>
                <input type="text" readonly="readonly" value="eugene@kopyov.com" class="form-control">
            </div>
            <div class="col-md-6">
                <label>Your country</label>
                <select class="form-control form-control-select2" data-fouc>
                    <option value="germany" selected>Germany</option>
                    <option value="france">France</option>
                    <option value="spain">Spain</option>
                    <option value="netherlands">Netherlands</option>
                    <option value="other">...</option>
                    <option value="uk">United Kingdom</option>
                </select>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-md-6">
                <label>Phone #</label>
                <input type="text" value="+99-99-9999-9999" class="form-control">
                <span class="form-text text-muted">+99-99-9999-9999</span>
            </div>

            <div class="col-md-6">
                <label>Upload profile image</label>
                <input type="file" class="form-input-styled" data-fouc>
                <span class="form-text text-muted">Accepted formats: gif, png, jpg. Max file size 2Mb</span>
            </div>
        </div>
    </div>

    <div class="text-right">
        <button type="submit" class="btn btn-primary">Save changes</button>
    </div>
</asp:Content>

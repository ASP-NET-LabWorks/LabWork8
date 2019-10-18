<%@ Page Title="Кэширование по параметру" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ParamCache.aspx.cs" Inherits="LabWork8.ParamCache" %>

<%@ OutputCache Duration="1000" VaryByParam="testParam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="jumbotron">
    <h1>Кэширование по параметру</h1>
    <hr />
    <p class="lead">
        Время на момент кэширования страницы: 
        <strong><asp:Label ID="LabelCurrentTime" runat="server"></asp:Label></strong>
    </p>
    <p class="lead">
        Время на момент загрузки страницы: 
        <strong><asp:Substitution runat="server" MethodName="GetActualCurrentTime" /></strong>
    </p>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">testParam =</span>
        </div>
        <asp:TextBox CssClass="form-control" ID="TextBox" runat="server" ></asp:TextBox>
        <div class="input-group-append">
            <asp:Button CssClass="btn btn-primary" ID="Button" runat="server" Text="Перейти" OnClick="Button_Click" />
        </div>
    </div>
</div>
</asp:Content>

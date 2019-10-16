<%@ Page Title="Кэширование по параметрам" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ParamsCache.aspx.cs" Inherits="LabWork8.ParamsCache" %>

<%@ OutputCache Duration="1000" VaryByParam="testParamA;testParamB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="jumbotron">
    <h1>Кэширование по параметрам</h1>
    <hr />
    <p class="lead">
        Время кэширования страницы: 
        <asp:Label ID="LabelCurrentTime" runat="server"></asp:Label>
    </p>
    <p class="lead">
        Время загрузки страницы: 
        <asp:Substitution runat="server" MethodName="GetActualCurrentTime" />
    </p>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">testParamA =</span>
        </div>
        <asp:TextBox CssClass="form-control" ID="TextBoxA" runat="server" ></asp:TextBox>
        <span class="input-group-text">testParamB =</span>
        <asp:TextBox CssClass="form-control" ID="TextBoxB" runat="server" ></asp:TextBox>
        <div class="input-group-append">
            <asp:Button CssClass="btn btn-primary" ID="Button" runat="server" Text="Перейти" OnClick="Button_Click" />
        </div>
    </div>
</div>
</asp:Content>

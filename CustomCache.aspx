<%@ Page Title="Настраиваемое кэширование" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomCache.aspx.cs" Inherits="LabWork8.CustomCache" %>

<%@ OutputCache Duration="1000" VaryByParam="None" VaryByCustom="customTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="jumbotron">
    <h1>Настраиваемое кэширование</h1>
    <p class="lead">Эта страница кэшируется по заголовку запроса User-Agent</p>
    <hr />
    <p class="lead">
        Время кэширования страницы: 
        <asp:Label ID="LabelCurrentTime" runat="server"></asp:Label>
    </p>
    <p class="lead">
        Время загрузки страницы: 
        <asp:Substitution runat="server" MethodName="GetActualCurrentTime" />
    </p>
</div>
</asp:Content>

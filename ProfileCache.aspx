<%@ Page Title="Кэширование в соответствии с профилем" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProfileCache.aspx.cs" Inherits="LabWork8.ProfileCache" %>

<%@ OutputCache CacheProfile="testProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron">
    <h1>Кэширование в соответствии с профилем</h1>
    <p class="lead">Профиль предполагает кэширование в течение 2 секунд</p>
    <hr />
    <p class="lead">
        Время на момент кэширования страницы: 
        <strong><asp:Label ID="LabelCurrentTime" runat="server"></asp:Label><strong>
    </p>
    <p class="lead">
        Время на момент загрузки страницы: 
        <strong><asp:Substitution runat="server" MethodName="GetActualCurrentTime" /><strong>
    </p>
</div>

</asp:Content>

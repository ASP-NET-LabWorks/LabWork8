<%@ Page Title="Кэширование в соответствии с профилем" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProfileCache.aspx.cs" Inherits="LabWork8.ProfileCache" %>

<%@ OutputCache CacheProfile="testProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron">
    <h1>Кэширование в соответствии с профилем</h1>
    <p class="lead">Профиль предполагает кэширование в течение 2 секунд</p>
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

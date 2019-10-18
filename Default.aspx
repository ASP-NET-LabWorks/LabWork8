<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LabWork8._Default" %>

<%@ OutputCache Duration="7" VaryByParam="None" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron">
    <h1>Кэширование в течение 7 секунд</h1>
    <p><em>Для демонстрации эта страница автоматически обновляется каждую секунду</em></p>
    <hr />
    <p class="lead">
        Время на момент кэширования страницы: 
        <strong><asp:Label ID="LabelCurrentTime" runat="server"></asp:Label></strong>
    </p>
    <p class="lead">
        Время на момент загрузки страницы: 
        <strong><asp:Substitution runat="server" MethodName="GetActualCurrentTime" /></strong>
    </p>
</div>

<script>
    setInterval(() => {
        window.location.reload(true)
    }, 1000)
</script>

</asp:Content>

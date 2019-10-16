<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LabWork8._Default" %>

<%@ OutputCache Duration="7" VaryByParam="None" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron">
    <h1>Кэширование в течение 7 секунд</h1>
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

<script>
    setInterval(() => {
        window.location.reload(true)
    }, 1000)
</script>

</asp:Content>

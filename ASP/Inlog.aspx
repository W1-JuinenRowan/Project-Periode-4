<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inlog.aspx.cs" Inherits="ASP_Inlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <asp:TextBox ID="LogNaam" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="WW" runat="server"></asp:TextBox>
    <br />
    <br />
    dingen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="LogIn" runat="server" Text="Login" OnClick="LogIn_Click" />
&nbsp;<asp:Literal ID="meld" runat="server"></asp:Literal>
&nbsp;
</asp:Content>


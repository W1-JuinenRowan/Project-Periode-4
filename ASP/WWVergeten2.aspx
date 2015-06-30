<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WWVergeten2.aspx.cs" Inherits="ASP_WWVergeten2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <div>
        <asp:Literal ID="meld" runat="server"></asp:Literal>

        <br />
        <br />

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="WW" runat="server"></asp:TextBox>
    </div>
    <asp:TextBox ID="WWC" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Change" runat="server" Text="Verander Wachtwoord" />
</asp:Content>


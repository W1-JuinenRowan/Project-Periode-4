<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aanmeld1.aspx.cs" Inherits="ASP_Aanmelden1" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" />
    <script src="../JQUERY/jquery-2.1.4.js"></script>
    <script src="../JQUERY/Functions.js"></script>
    <script src="../JQUERY/AnimateLib.js"></script>
    <title>Aanmelden</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="content">
        <div id="MenuButn">
            <h3 id="btnText">Open Het Menu</h3>
            <img id="btnMenuImg" alt="error" src="../IMG/menu.svg" />
        </div>  
        <asp:TextBox ID="LogNaam" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="Wachtwoord" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        <br />
        <asp:DropDownList ID="SQID" runat="server" DataSourceID="SqlDataSource1" DataTextField="Security_Question" DataValueField="Security_QuestionID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectFestivalAppConnectionString %>" SelectCommand="SELECT [Security QuestionID] AS Security_QuestionID, [Security Question] AS Security_Question FROM [Security Questions]"></asp:SqlDataSource>
        <br />
        <asp:TextBox ID="SQA" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="arttxt" runat="server" Height="22px"></asp:TextBox>
        <br />
        <asp:TextBox ID="fotovid" runat="server"></asp:TextBox>
        <br />
        <asp:DropDownList ID="genre" runat="server">
        </asp:DropDownList>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Button" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="CreateUser" runat="server" Text="Button" OnClick="CreateUser_Click" />
        <br />
        <br />
        <asp:Literal ID="meld" runat="server"></asp:Literal>
    </div>
    </form>
    <div id="menu">
    </div>
</body>
</html>


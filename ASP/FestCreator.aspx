<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FestCreator.aspx.cs" Inherits="ASP_FestCreator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <asp:TextBox ID="FestNaam" runat="server"></asp:TextBox>
    &nbsp;Naam<br />
    <asp:Calendar ID="StartCalendar" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
        <DayStyle Width="14%" />
        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
        <TodayDayStyle BackColor="#CCCC99" />
    </asp:Calendar>
    
    <br />
    <asp:Calendar ID="EindCalendar" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
        <DayStyle Width="14%" />
        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
        <TodayDayStyle BackColor="#CCCC99" />
    </asp:Calendar>
    <br />
    <br />
&nbsp;<asp:TextBox ID="Locatie" runat="server"></asp:TextBox>
    locatie<br />
    <br />
    <asp:TextBox ID="Genre" runat="server"></asp:TextBox>
    genre<br />
    <br />
    <asp:TextBox ID="AantalPodia" runat="server" TextMode="Number"></asp:TextBox>
    Aantal Podia<br />
    <br />
    <asp:TextBox ID="Beschrijving" runat="server" TextMode="MultiLine"></asp:TextBox>
    Beschrijving<br />
    <br />
    <asp:DropDownList ID="DropDown" runat="server">
        <asp:ListItem>Thema1</asp:ListItem>
        <asp:ListItem>Thema2</asp:ListItem>
    </asp:DropDownList>
&nbsp;Thema
    <br />
    <br />
    <asp:Button ID="Create" runat="server" Text="Create Festival" OnClick="Create_Click" />
    <br />
    <br />
    <asp:Literal ID="meld" runat="server"></asp:Literal>
</asp:Content>


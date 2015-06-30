<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TermsOfAccount.aspx.cs" Inherits="ASP_TermsOfAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title> Aanmelden </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <div id="content">
        <div id='MenuButn'>
                <h3 id='btnText'>Open Het Menu</h3>
                <img id='btnMenuImg' src="../IMG/menu.svg" alt='error' />
        </div>

        <div id="ToAC">
            BLABLABLA dingen over het maken van accounts en artiest zijn placeholder
        </div>
        <div id="terug">
            <img id='imgtrg' src="../IMG/_groter.jpg" alt='error'/>
            <h1 id="txttrg">Akkoord</h1>
        </div>
        <div id="verder"> <!-- eigenlijk zijn deze omgedraaid maar let er maar niet op -->
            <img id='imgvrd' src="../IMG/_kleiner.jpg" alt='error'/>
            <h1 id="txtvrd">Annuleren</h1>
        </div>
    </div>
</asp:Content>


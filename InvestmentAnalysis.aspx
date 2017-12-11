<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="InvestmentAnalysis.aspx.cs" Inherits="InvestmentAnalysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Investment Property Analysis</h2>
    <p>
        <asp:Label ID="sales_price_label" runat="server" Text="Sales price"></asp:Label>
        <input id="sales_price_input" type="number" runat="server"/></p>
    <p>
        <asp:Label ID="downpayment_label1" runat="server" Text="Downpayment (%)"></asp:Label>
        <input id="downpayment_input" type="number" runat="server"/>
    </p>
    <p>
        <asp:Label ID="downpayment_label2" runat="server" Text="Downpayment ($)"></asp:Label>
        <asp:TextBox ID="downpayment" runat="server" ClientIDMode="Static" ReadOnly="true"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lien_label1" runat="server" Text="1st Lien LTV"></asp:Label>
        <asp:TextBox ID="first_lien_ltv" runat="server" ClientIDMode="Static" ReadOnly="true"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lien_label2" runat="server" Text="1st Lien Balance"></asp:Label>
        <asp:TextBox ID="first_lien_balance" runat="server" ClientIDMode="Static" ReadOnly="true"></asp:TextBox>
    </p>
    
    <asp:Button ID="calculate_button" runat="server" Text="Calculate" OnClick="calculate_button_Click" UseSubmitBehavior="false" ClientIDMode="Static"/>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="InvestmentAnalysis.aspx.cs" Inherits="InvestmentAnalysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Investment Property Analysis</h2>
    <div style="width: 50%">
        <p>
            <asp:Label ID="sales_price_label" runat="server" Text="Sales price"></asp:Label>
            <input id="sales_price_input" type="number" runat="server" style="float: right" />
        </p>
        <p>
            <asp:Label ID="downpayment_label1" runat="server" Text="Downpayment (%)"></asp:Label>
            <input id="downpayment_input" type="number" runat="server" style="float: right" />
        </p>
        <p>
            <asp:Label ID="downpayment_label2" runat="server" Text="Downpayment ($)"></asp:Label>
            <asp:TextBox ID="downpayment" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lien_label1" runat="server" Text="1st Lien LTV"></asp:Label>
            <asp:TextBox ID="first_lien_ltv" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lien_label2" runat="server" Text="1st Lien Balance"></asp:Label>
            <asp:TextBox ID="first_lien_balance" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="closing_cost_label" runat="server" Text="Closing Cost (5%)"></asp:Label>
            <asp:TextBox ID="closing_cost" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray"></asp:TextBox>
        </p>
        <h4>Loan Terms:</h4>
        <p>
            <asp:Label ID="loan_interest_rate_label" runat="server" Text="Interest Rate"></asp:Label>
            <input id="loan_interest_rate_input" type="number" runat="server" style="float: right" />
        </p>
        <p>
            <asp:Label ID="loan_term_label" runat="server" Text="Term"></asp:Label>
            <input id="loan_term_input" type="number" runat="server" style="float: right" />
        </p>
        <p>
            <asp:Label ID="loan_balance_label" runat="server" Text="Loan Balance"></asp:Label>
            <asp:TextBox ID="loan_balance" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="monthly_payment_label" runat="server" Text="Monthly Payment"></asp:Label>
            <asp:TextBox ID="monthly_payment" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray"></asp:TextBox>
        </p>
    </div>
    <asp:Button ID="calculate_button" runat="server" Text="Calculate" OnClick="calculate_button_Click" UseSubmitBehavior="false" ClientIDMode="Static"/>

</asp:Content>


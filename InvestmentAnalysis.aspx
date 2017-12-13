<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="InvestmentAnalysis.aspx.cs" Inherits="InvestmentAnalysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Investment Property Analysis</h2>
    <div style="width: 50%">
        <h4>General:</h4>
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
            <input id="closing_cost" type="number" runat="server" style="float: right" />
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
        <h4>Expenses:</h4>
        <p>
            <asp:Label ID="yearly_tax_rate_label" runat="server" Text="Yearly Tax Rate"></asp:Label>
            <input id="yearly_tax_rate" type="number" runat="server" style="float: right" />
        </p>
        <p>
            <asp:Label ID="yearly_insurance_rate_label" runat="server" Text="Yearly Insurance Rate"></asp:Label>
            <input id="yearly_insurance_rate" type="number" runat="server" style="float: right" />
        </p>
        <p>
            <asp:Label ID="monthly_taxes_label" runat="server" Text="Monthly Taxes"></asp:Label>
            <asp:TextBox ID="monthly_taxes" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="monthly_insurance_pmt_label" runat="server" Text="Monthly Insurance Pmt"></asp:Label>
            <asp:TextBox ID="monthly_insurance_pmt" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="monthly_maintenance_label" runat="server" Text="Monthly Maintenance"></asp:Label>
            <input id="monthly_maintenance" type="number" runat="server" style="float: right" />
        </p>
        <p>
            <asp:Label ID="other_expense_label" runat="server" Text="Other Expense"></asp:Label>
            <input id="other_expense" type="number" runat="server" style="float: right" />
        </p>
        <br />
        <p>
            <asp:Label ID="total_monthly_cost_label" runat="server" Text="Total Monthly Cost" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="total_monthly_cost" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray" Font-Bold="true"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="number_of_units_label" runat="server" Text="Number of Units"></asp:Label>
            <input id="number_of_units" type="number" runat="server" style="float: right" />
        </p>
        <p>
            <asp:Label ID="rent_per_unit_label" runat="server" Text="Rent per Unit"></asp:Label>
            <input id="rent_per_unit" type="number" runat="server" style="float: right" />
        </p>
        <p>
            <asp:Label ID="monthly_rent_label" runat="server" Text="Monthly Rent" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="monthly_rent" runat="server" ClientIDMode="Static" ReadOnly="true" Style="float: right; background-color: lightgray" Font-Bold="true"></asp:TextBox>
        </p>
    </div>
    <asp:Button ID="calculate_button" runat="server" Text="Calculate" OnClick="calculate_button_Click" UseSubmitBehavior="false" ClientIDMode="Static"/>

</asp:Content>


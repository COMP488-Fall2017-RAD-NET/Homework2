using System;

public partial class InvestmentAnalysis : System.Web.UI.Page
{
    double salesPrice,
           downpaymentPercent,
           downpaymentValue,
           firstLienLTV,
           firstLienBalance,
           closingCost,
           loanInterestRate,
           loanTerm,
           loanBalance,
           monthlyPayment,
           yearlyTaxRate,
           yearlyInsuranceRate,
           monthlyTaxes,
           monthlyInsurancePmt,
           monthlyMaintenance,
           otherExpense,
           totalMonthlyCost,
           numberOfUnits,
           rentPerUnit,
           monthlyRent,
           monthlyPL,
           annualPL,
           cashReturn,
           ROE,
           breakevenYears,
           totalCapital;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void calculate_button_Click(object sender, EventArgs e)
    {
        salesPrice = Convert.ToDouble(sales_price_input.Value);
        downpaymentPercent = Convert.ToDouble(downpayment_input.Value) / 100.0;
        downpaymentValue = salesPrice * downpaymentPercent;
        downpayment.Text = downpaymentValue.ToString("C2");
    }
}
using System;
using Microsoft.VisualBasic;

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
        firstLienLTV = 1.0 - downpaymentPercent;
        firstLienBalance = salesPrice * firstLienLTV;

        downpayment.Text = downpaymentValue.ToString("C2");
        first_lien_ltv.Text = firstLienLTV.ToString("P");
        first_lien_balance.Text = firstLienBalance.ToString("C2");

        closingCost = Convert.ToDouble(closing_cost.Value);

        loanInterestRate = Convert.ToDouble(loan_interest_rate_input.Value) / 100.0;
        loanTerm = Convert.ToDouble(loan_term_input.Value);
        loanBalance = firstLienBalance;
        monthlyPayment = Financial.Pmt(loanInterestRate / 12, loanTerm, loanBalance);

        loan_balance.Text = loanBalance.ToString("C2");
        monthly_payment.Text = monthlyPayment.ToString("C2");

        yearlyTaxRate = Convert.ToDouble(yearly_tax_rate.Value) / 100.0;
        yearlyInsuranceRate = Convert.ToDouble(yearly_insurance_rate.Value) / 100.0;
        monthlyTaxes = -salesPrice * yearlyTaxRate / 12.0;
        monthlyInsurancePmt = -salesPrice * yearlyInsuranceRate / 12.0;

        monthly_taxes.Text = monthlyTaxes.ToString("C2");
        monthly_insurance_pmt.Text = monthlyInsurancePmt.ToString("C2");

        monthlyMaintenance = Convert.ToDouble(monthly_maintenance.Value);
        otherExpense = Convert.ToDouble(other_expense.Value);

        totalMonthlyCost = otherExpense + monthlyMaintenance + monthlyInsurancePmt + monthlyTaxes + monthlyPayment;
        total_monthly_cost.Text = totalMonthlyCost.ToString("C2");

        numberOfUnits = Convert.ToDouble(number_of_units.Value);
        rentPerUnit = Convert.ToDouble(rent_per_unit.Value);
        monthlyRent = numberOfUnits * rentPerUnit;
        monthly_rent.Text = monthlyRent.ToString("C2");



    }
}
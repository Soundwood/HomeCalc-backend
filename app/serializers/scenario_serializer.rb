class ScenarioSerializer < ActiveModel::Serializer
  attributes :id, :net_income, :income_after_tax, :monthly_debt, 
  :credit_score, :downpayment, :state, :city, :stars

  belongs_to :mortg_interest_rate
  belongs_to :prop_tax_rate
end

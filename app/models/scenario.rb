class Scenario < ApplicationRecord
    belongs_to :prop_tax_rate
    belongs_to :mortg_interest_rate
    belongs_to :user

    validates :net_income, presence: true
    validates :income_after_tax, presence: true
    validates :monthly_debt, presence: true
    validates :credit_score, presence: true
    validates :downpayment, presence: true
    validates :state, presence: true
    validates :city, presence: true
    validates :prop_tax_rate_id, presence: true
    validates :mortg_interest_rate_id, presence: true
end
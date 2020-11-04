class Scenario < ApplicationRecord
    belongs_to :prop_tax_rate
    belongs_to :mortg_interest_rate
end

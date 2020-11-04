class CreateScenarios < ActiveRecord::Migration[6.0]
  def change
    create_table :scenarios do |t|
      t.decimal :net_income
      t.decimal :income_after_tax
      t.decimal :monthly_debt
      t.string :credit_score
      t.decimal :downpayment
      t.string :state
      t.string :city
      t.belongs_to :prop_tax_rate, null: false, foreign_key: true
      t.belongs_to :mortg_interest_rate, null: false, foreign_key: true

      t.timestamps
    end
  end
end

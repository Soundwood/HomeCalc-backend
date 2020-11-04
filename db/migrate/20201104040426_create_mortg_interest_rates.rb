class CreateMortgInterestRates < ActiveRecord::Migration[6.0]
  def change
    create_table :mortg_interest_rates do |t|
      t.string :credit_score
      t.integer :loan_length_yrs
      t.decimal :interest_rate

      t.timestamps
    end
  end
end

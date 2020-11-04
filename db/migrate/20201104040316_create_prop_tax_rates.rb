class CreatePropTaxRates < ActiveRecord::Migration[6.0]
  def change
    create_table :prop_tax_rates do |t|
      t.string :state
      t.decimal :tax_rate

      t.timestamps
    end
  end
end

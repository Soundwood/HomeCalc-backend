class AddStarsToScenarios < ActiveRecord::Migration[6.0]
  def change
    add_column :scenarios, :stars, :integer
  end
end

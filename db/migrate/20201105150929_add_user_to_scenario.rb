class AddUserToScenario < ActiveRecord::Migration[6.0]
  def change
    add_reference :scenarios, :user, index: true
  end
end

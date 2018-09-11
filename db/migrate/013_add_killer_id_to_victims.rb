class AddKillerIdToVictims < ActiveRecord::Migration[5.0]
  def change
    add_column :victims, :killer_id, :integer
  end
end

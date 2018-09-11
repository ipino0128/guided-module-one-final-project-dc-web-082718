class UpdateVictims < ActiveRecord::Migration[5.0]
  def change
    remove_column :victims, :relationship_status
    remove_column :victims, :time_of_death
    remove_column :victims, :occupation
    rename_column :victims, :ethnicity, :nationality
  end
end

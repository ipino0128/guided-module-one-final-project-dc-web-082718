class DeleteStateOfResidence < ActiveRecord::Migration[5.0]
  def change
    remove_column :killers, :state_of_residence
    remove_column :victims, :state_of_residence
    rename_column :victims, :state_of_murder, :location_of_death

  end
end

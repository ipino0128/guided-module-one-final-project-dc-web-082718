class ChangeDateOfMurdersToTextInKillers < ActiveRecord::Migration[5.0]
  def change
    change_column :killers, :date_of_murders, :text
  end
end

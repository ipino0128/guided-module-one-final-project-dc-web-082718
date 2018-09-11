class RenameDateOfBirthInKillers < ActiveRecord::Migration[5.0]
  def change
    rename_column :killers, :date_of_birth, :date_of_murders
  end
end

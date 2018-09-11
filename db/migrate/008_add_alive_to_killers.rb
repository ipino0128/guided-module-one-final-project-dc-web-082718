class AddAliveToKillers < ActiveRecord::Migration[5.0]
  def change
    add_column :killers, :alive, :boolean
  end
end

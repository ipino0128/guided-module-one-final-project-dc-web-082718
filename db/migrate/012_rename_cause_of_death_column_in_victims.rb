class RenameCauseOfDeathColumnInVictims < ActiveRecord::Migration[5.0]
  def change
    rename_column :victims, :cause_of_death_id, :death_cause_id
  end
end

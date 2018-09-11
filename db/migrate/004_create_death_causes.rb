class CreateDeathCauses < ActiveRecord::Migration[5.0]
  def change
    create_table :death_causes do |t|
      t.string :name
    end
  end
end

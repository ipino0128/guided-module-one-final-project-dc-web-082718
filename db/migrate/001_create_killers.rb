class CreateKillers < ActiveRecord::Migration[5.0]
  def change
    create_table :killers do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :ethnicity
      t.string :state_of_residence
      t.boolean :bed_wetter
      t.boolean :pyromania
      t.boolean :animal_torturer
    end
  end
end

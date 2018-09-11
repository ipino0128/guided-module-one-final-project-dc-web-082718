class CreateVictims < ActiveRecord::Migration[5.0]
  def change
    create_table :victims do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :ethnicity
      t.string :relationship_status
      t.string :occupation
      t.string :state_of_residence
      t.string :state_of_murder
      t.string :time_of_death
      t.integer :cause_of_death_id
      t.string :image_url
    end
  end
end

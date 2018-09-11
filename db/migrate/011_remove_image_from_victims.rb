class RemoveImageFromVictims < ActiveRecord::Migration[5.0]
  def change
    remove_column :victims, :image_url
  end
end

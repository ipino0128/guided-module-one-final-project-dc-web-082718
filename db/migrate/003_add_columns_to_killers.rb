class AddColumnsToKillers < ActiveRecord::Migration[5.0]
  def change
  rename_column :killers, :name, :first_name
  add_column :killers, :last_name, :string
  add_column :killers, :nickname, :string
  add_column :killers, :relationship_status, :string
  add_column :killers, :occupation, :string
  add_column :killers, :legal_status, :text
  rename_column :killers, :age, :date_of_birth
  add_column :killers, :article_url, :string
  end
end

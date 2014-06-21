class AddCodpostalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :codpostal, :string

  end
end

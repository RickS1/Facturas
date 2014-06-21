class AddCiudadToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ciudad, :string

  end
end

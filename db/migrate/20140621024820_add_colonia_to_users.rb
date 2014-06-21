class AddColoniaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :colonia, :string

  end
end

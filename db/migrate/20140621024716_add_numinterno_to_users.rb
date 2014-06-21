class AddNuminternoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :numinterno, :string

  end
end

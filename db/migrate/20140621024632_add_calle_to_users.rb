class AddCalleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :calle, :string

  end
end

class AddNumexternoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :numexterno, :string

  end
end

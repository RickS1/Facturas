class AddDelegacionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :delegacion, :string

  end
end

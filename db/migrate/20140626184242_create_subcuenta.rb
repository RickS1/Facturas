class CreateSubcuenta < ActiveRecord::Migration
  def change
    create_table :subcuenta do |t|
      t.belongs_to :user
      t.string :alias
      t.string :rfc
      t.string :password
      t.string :password_confirm

      t.timestamps
    end
  end
end

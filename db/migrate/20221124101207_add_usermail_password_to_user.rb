class AddUsermailPasswordToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :usermail, :string
    add_column :users, :password, :string
  end
end

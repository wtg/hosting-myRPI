class AddCredentialsToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :rcs, :string
    add_column :accounts, :fname, :string
    add_column :accounts, :lname, :string
    add_column :accounts, :sub, :string
  end
end

class CreateConnectedAccounts < ActiveRecord::Migration
  def change
    create_table :connected_accounts do |t|
      t.string :key
      t.string :link
      t.string :email
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :connected_accounts, :user_id
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :name
      t.boolean :isAdmin
      t.string :email
      t.string :password
      t.string :location
      t.string :website
      t.string :company
      t.text :about
      t.text :css

      t.timestamps
    end
  end
end

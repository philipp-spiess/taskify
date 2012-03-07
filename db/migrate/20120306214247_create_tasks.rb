class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :website
      t.date :date
      t.references :user

      t.timestamps
    end
    add_index :tasks, :user_id
  end
end

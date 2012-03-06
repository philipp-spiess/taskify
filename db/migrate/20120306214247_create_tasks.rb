class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :website
      t.date :date
      t.reference :user

      t.timestamps
    end
  end
end

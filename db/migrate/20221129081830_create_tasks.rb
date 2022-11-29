class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :details
      t.date :date
      t.reference :category

      t.timestamps
    end
  end
end

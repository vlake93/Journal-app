class CreateTesters < ActiveRecord::Migration[7.0]
  def change
    create_table :testers do |t|
      t.string :name
      t.string :detail

      t.timestamps
    end
  end
end

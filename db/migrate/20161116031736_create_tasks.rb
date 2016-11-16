class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :fear_id
      t.text :description
      t.integer :deadline

      t.timestamps null: false
    end
  end
end

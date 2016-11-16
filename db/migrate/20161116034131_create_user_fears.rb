class CreateUserFears < ActiveRecord::Migration
  def change
    create_table :user_fears do |t|
      t.integer :user_id
      t.integer :fear_id
    end
  end
end

class CreateUserProblems < ActiveRecord::Migration
  def change
    create_table :user_problems do |t|
      t.integer :user_id
      t.integer :problem_id

      t.timestamps
    end
  end
end

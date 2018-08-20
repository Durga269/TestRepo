class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question

      t.timestamps
    end
    add_index :questions, :user_id
  end
end

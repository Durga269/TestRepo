class CreateAddUserIdToAnswers < ActiveRecord::Migration
  def change
    create_table :add_user_id_to_answers do |t|
    add_column :answers, :user_id, :integer
    add_index :answers, :user_id
      t.timestamps
    end
  end
end

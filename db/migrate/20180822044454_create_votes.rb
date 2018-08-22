class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :votes
      t.references :answer

      t.timestamps
    end
    add_index :votes, :answer_id
  end
end

class CreateAddUserIdToVotes < ActiveRecord::Migration
  def change
    create_table :add_user_id_to_votes do |t|
	add_column :votes, :user_id, :integer
    add_index :votes, :user_id
      t.timestamps
    end
  end
end

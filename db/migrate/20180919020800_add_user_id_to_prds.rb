class AddUserIdToPrds < ActiveRecord::Migration[5.1]
  def change
    add_column :prds, :user_id, :integer
    add_index :prds, :user_id
  end
end

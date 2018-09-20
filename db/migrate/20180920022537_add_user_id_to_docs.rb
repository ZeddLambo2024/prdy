class AddUserIdToDocs < ActiveRecord::Migration[5.1]
  def change
    add_column :docs, :user_id, :integer
    add_index :docs, :user_id
  end
end

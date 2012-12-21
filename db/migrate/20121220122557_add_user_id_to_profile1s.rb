class AddUserIdToProfile1s < ActiveRecord::Migration
  def change
    add_column :profile1s, :user_id, :integer
  end
end

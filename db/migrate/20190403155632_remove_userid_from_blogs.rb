class RemoveUseridFromBlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :user_id, :string
  end
end

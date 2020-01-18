class RemoveBodyFromPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :body, :string
  end
end

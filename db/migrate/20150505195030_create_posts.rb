class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :link, limit: 2000

      t.timestamps
    end
  end
end

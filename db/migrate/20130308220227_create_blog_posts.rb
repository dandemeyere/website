class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string   :title
      t.text     :body
      t.text     :excerpt
      t.string   :permalink
      t.boolean  :draft, default: true
      t.datetime :published_at
      t.string   :meta_keywords
      t.string   :meta_title
      t.text     :meta_description
      t.timestamps
    end

    add_index :blog_posts, :draft
    add_index :blog_posts, :published_at
    add_index :blog_posts, :permalink
  end
end

class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string   :type
      t.string   :title
      t.text     :body
      t.text     :excerpt
      t.string   :permalink
      t.boolean  :published, default: false
      t.datetime :published_at
      t.string   :meta_keywords
      t.text     :meta_description
      t.string   :state, default: 'draft'
      t.timestamps
    end

    add_index :blog_posts, :state
    add_index :blog_posts, :permalink
    add_index :blog_posts, :published
  end
end
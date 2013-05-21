class CreateArticlesTagsTable < ActiveRecord::Migration
  def change
    create_table :articles_tags do |t|
      t.references :article, null: false
      t.references :tag, null: false
    end
  end
end

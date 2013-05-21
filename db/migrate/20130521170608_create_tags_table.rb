class CreateTagsTable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :article
      t.string :name
      t.timestamps
    end
  end
end
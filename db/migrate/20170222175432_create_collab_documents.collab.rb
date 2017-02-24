# This migration comes from collab (originally 20170222133537)
class CreateCollabDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :collab_documents do |t|
      t.string :uuid
      t.string :edit_token
      t.timestamps
    end

    create_table :collab_patches do |t|
      t.text :content, :limit => 16.megabytes - 1
      t.string :iv
      t.string :auth
      t.integer :document_id
    end
  end
end

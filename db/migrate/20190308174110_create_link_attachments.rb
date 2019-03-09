class CreateLinkAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :link_attachments do |t|
      t.references :link, foreign_key: true
      t.datetime :expiration_date
      t.references :attachment, index: true, foreign_key: true
      t.timestamps
    end
  end
end

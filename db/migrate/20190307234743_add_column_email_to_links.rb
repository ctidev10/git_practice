class AddColumnEmailToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :email, :string
  end
end

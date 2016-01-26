class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.string :author
      t.integer :entry_id

      t.timestamps null: false
    end
  end
end

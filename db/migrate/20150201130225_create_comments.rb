class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body
      t.references :user, index: true

      t.timestamps null: false
    end
    add_index :comments, :post_id
    add_foreign_key :comments, :users
  end
end

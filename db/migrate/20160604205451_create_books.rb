class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :author_id
      t.string :publisher_id
      t.integer :isbn
      t.string :year
      t.string :price
      t.string :buy
      t.text :description
      t.string :format
      t.integer :pages

      t.timestamps null: false
    end
  end
end

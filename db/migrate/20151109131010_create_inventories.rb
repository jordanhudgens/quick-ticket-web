class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :title
      t.integer :qty
      t.references :ticket, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

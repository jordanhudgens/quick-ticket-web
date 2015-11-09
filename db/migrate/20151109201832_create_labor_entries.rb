class CreateLaborEntries < ActiveRecord::Migration
  def change
    create_table :labor_entries do |t|
      t.references :user, index: true, foreign_key: true
      t.decimal :hours
      t.references :ticket, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

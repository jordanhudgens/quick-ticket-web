class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.decimal :hours
      t.decimal :mileage
      t.string :employee
      t.string :customer

      t.timestamps null: false
    end
  end
end

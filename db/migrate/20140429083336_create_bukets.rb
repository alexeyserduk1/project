class CreateBukets < ActiveRecord::Migration
  def change
    create_table :bukets do |t|
      t.string :flower
      t.integer :quantity
      t.integer :prise

      t.timestamps
    end
  end
end

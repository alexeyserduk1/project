class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.references :mother

      t.timestamps
    end
    add_index :children, :mother_id
  end
end

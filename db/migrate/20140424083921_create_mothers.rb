class CreateMothers < ActiveRecord::Migration
  def change
    create_table :mothers do |t|
      t.string :name
      t.string :surname
      t.string :job
      t.integer :age

      t.timestamps
    end
  end
end

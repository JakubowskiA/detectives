class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :title
      t.integer :year
      t.boolean :solved
      t.integer :detective_id

      t.timestamps
    end
  end
end

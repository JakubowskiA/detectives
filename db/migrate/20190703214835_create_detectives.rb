class CreateDetectives < ActiveRecord::Migration[5.2]
  def change
    create_table :detectives do |t|
      t.string :name
      t.string :team
      t.string :home

      t.timestamps
    end
  end
end

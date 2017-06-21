class CreateStarWars < ActiveRecord::Migration[5.1]
  def change
    create_table :star_wars do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end

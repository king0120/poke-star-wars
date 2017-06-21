class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image_url
      t.integer :height
      t.integer :weight
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end

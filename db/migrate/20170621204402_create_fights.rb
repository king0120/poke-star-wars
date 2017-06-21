class CreateFights < ActiveRecord::Migration[5.1]
  def change
    create_table :fights do |t|
      t.references :pokemon, foreign_key: true
      t.references :star_war, foreign_key: true
      t.string :winner

      t.timestamps
    end
  end
end

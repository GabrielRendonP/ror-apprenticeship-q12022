class CreatePokeTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :poke_types do |t|
      t.string :name
      t.string :double_damage_from, array: true
      t.string :double_damage_to, array: true
      t.string :half_damage_from, array: true
      t.string :half_damage_to, array: true
      t.string :no_damage_from, array: true
      t.string :no_damage_to, array: true

      t.timestamps
    end
  end
end

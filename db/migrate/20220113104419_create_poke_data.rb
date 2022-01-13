class CreatePokeData < ActiveRecord::Migration[6.1]
  def change
    create_table :poke_data do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end

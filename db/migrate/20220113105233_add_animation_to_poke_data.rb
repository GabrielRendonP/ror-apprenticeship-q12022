class AddAnimationToPokeData < ActiveRecord::Migration[6.1]
  def change
    add_column :poke_data, :animation, :string
  end
end

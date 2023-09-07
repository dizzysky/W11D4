class ChangeCapturedDefaultInPokemons < ActiveRecord::Migration[7.0]
  def change
    change_column_default :pokemons, :captured, from: nil, to: false
  end
end

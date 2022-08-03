# frozen_string_literal: true

class AddLocalidadeRefToFabricante < ActiveRecord::Migration[7.0]
  def change
    add_reference :fabricantes, :endereco, null: false, foreign_key: { to_table: :localidades }
  end
end

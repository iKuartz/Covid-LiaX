# frozen_string_literal: true

class AddFabricanteRefToLote < ActiveRecord::Migration[7.0]
  def change
    add_reference :lotes, :fabricante, null: false, foreign_key: { to_table: :fabricantes }
  end
end

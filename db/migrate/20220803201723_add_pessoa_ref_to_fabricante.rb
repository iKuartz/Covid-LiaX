# frozen_string_literal: true

class AddPessoaRefToFabricante < ActiveRecord::Migration[7.0]
  def change
    add_reference :fabricantes, :responsavel, null: false, foreign_key: { to_table: :pessoas }
  end
end

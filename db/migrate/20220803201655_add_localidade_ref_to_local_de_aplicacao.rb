# frozen_string_literal: true

class AddLocalidadeRefToLocalDeAplicacao < ActiveRecord::Migration[7.0]
  def change
    add_reference :local_de_aplicacaos, :endereco, null: false, foreign_key: { to_table: :localidades }
  end
end

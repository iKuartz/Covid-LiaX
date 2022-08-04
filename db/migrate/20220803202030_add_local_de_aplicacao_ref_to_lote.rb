# frozen_string_literal: true

class AddLocalDeAplicacaoRefToLote < ActiveRecord::Migration[7.0]
  def change
    add_reference :lotes, :destino_do_lote, null: false, foreign_key: { to_table: :local_de_aplicacaos }
  end
end

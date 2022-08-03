# frozen_string_literal: true

class AddDetalhesDaVacinaToLote < ActiveRecord::Migration[7.0]
  def change
    add_reference :lotes, :vacina_do_lote, null: false, foreign_key: { to_table: :detalhes_da_vacinas }
  end
end

# frozen_string_literal: true

class AddDetalhesDaVacinaToInventario < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventarios, :Vacina, null: false, foreign_key: { to_table: :detalhes_da_vacinas }
  end
end

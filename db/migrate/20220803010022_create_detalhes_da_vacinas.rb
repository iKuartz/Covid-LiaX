# frozen_string_literal: true

class CreateDetalhesDaVacinas < ActiveRecord::Migration[7.0]
  def change
    create_table :detalhes_da_vacinas do |t|
      t.string :nome_da_vacina
      t.text :efeitos_colaterais
      t.text :interacoes_medicamentosas
      t.string :permitidas

      t.timestamps
    end
  end
end

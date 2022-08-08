# frozen_string_literal: true

class Lote < ApplicationRecord
  has_many :imunizante
  has_one :vacina_do_lote, foreign_key: 'vacina_do_lote_id', class_name: 'DetalhesDaVacina'
end

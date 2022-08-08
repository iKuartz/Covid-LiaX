# frozen_string_literal: true

class DetalhesDaVacina < ApplicationRecord
    belongs_to :lote
    belongs_to :imunizante
end

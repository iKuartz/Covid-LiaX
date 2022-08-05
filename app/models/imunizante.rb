# frozen_string_literal: true

class Imunizante < ApplicationRecord
    belongs_to :local_de_aplicacao
    belongs_to :lote
    belongs_to :pessoa, foreign_key: "paciente_id", class_name: "Pessoa"
end

# frozen_string_literal: true

class Localidade < ApplicationRecord
    belongs_to :local_de_aplicacao
    belongs_to :fabricante
end

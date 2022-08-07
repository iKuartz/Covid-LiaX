# frozen_string_literal: true

class Pessoa < ApplicationRecord
  has_many :imunizante
  belongs_to :local_de_aplicacao
end

# frozen_string_literal: true

class LocalDeAplicacao < ApplicationRecord
  has_many :imunizante
  has_one :pessoa, foreign_key: 'responsavel_id', class_name: 'Pessoa'
  has_one :local, foreign_key: 'endereco_id', class_name: 'Local'
end

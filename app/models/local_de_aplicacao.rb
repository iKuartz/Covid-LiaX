# frozen_string_literal: true

class LocalDeAplicacao < ApplicationRecord
  has_many :imunizante
  has_one :pessoa, foreign_key: 'id', class_name: 'Pessoa'
  has_one :local, foreign_key: 'id', class_name: 'Localidade'
end

# frozen_string_literal: true

class Fabricante < ApplicationRecord
  has_one :pessoa, foreign_key: 'id', class_name: 'Pessoa'
  has_one :local, foreign_key: 'id', class_name: 'Localidade'
end

# frozen_string_literal: true

class CreateRestricaos < ActiveRecord::Migration[7.0]
  def change
    create_table :restricaos, &:timestamps
  end
end

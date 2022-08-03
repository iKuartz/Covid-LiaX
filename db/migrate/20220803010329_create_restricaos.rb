# frozen_string_literal: true

class CreateRestricaos < ActiveRecord::Migration[7.0]
  def change
    create_table :restricaos do |t|
      t.integer :primeira_dose
      t.integer :segunda_dose
      t.integer :terceira_dose
      t.integer :quarta_dose

      t.timestamps
    end
  end
end

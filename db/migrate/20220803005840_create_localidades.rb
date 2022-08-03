# frozen_string_literal: true

class CreateLocalidades < ActiveRecord::Migration[7.0]
  def change
    create_table :localidades do |t|
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.string :rua
      t.integer :numero
      t.string :complemento

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateFabricantes < ActiveRecord::Migration[7.0]
  def change
    create_table :fabricantes do |t|
      t.string :nome
      t.string :cnpj
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end

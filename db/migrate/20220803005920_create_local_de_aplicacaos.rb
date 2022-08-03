# frozen_string_literal: true

class CreateLocalDeAplicacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :local_de_aplicacaos do |t|
      t.string :nome_do_local
      t.boolean :ativo
      t.string :cnpj
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end

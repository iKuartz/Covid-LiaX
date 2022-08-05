# frozen_string_literal: true

class CreatePessoas < ActiveRecord::Migration[7.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :cpf
      t.date :data_nascimento
      t.boolean :grupo_risco
      t.text :comorbidade
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end

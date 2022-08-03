# frozen_string_literal: true

class AddPessoaRefToLocalDeAplicacao < ActiveRecord::Migration[7.0]
  def change
    add_reference :local_de_aplicacaos, :responsavel, null: false, foreign_key: { to_table: :pessoas }
  end
end

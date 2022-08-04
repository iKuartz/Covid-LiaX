# frozen_string_literal: true

class AddLocalDeAplicacaoRefToInventario < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventarios, :local_de_aplicacao, null: false, foreign_key: { to_table: :local_de_aplicacaos }
  end
end

# frozen_string_literal: true

class CreateLocalDeAplicacaoInventarios < ActiveRecord::Migration[7.0]
  def change
    create_table :local_de_aplicacao_inventarios, &:timestamps
  end
end

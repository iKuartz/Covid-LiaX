class AddLocalDeAplicacaoRefToImunizante < ActiveRecord::Migration[7.0]
  def change
    add_reference :imunizantes, :local_de_aplicacao, null: false, foreign_key: {to_table: :local_de_aplicacaos}
  end
end

class AddPessoaRefToImunizante < ActiveRecord::Migration[7.0]
  def change
    add_reference :imunizantes, :paciente, null: false, foreign_key: {to_table: :pessoas}
  end
end

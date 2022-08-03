class AddLocalidadeRefToPessoa < ActiveRecord::Migration[7.0]
  def change
    add_reference :pessoas, :endereco, null: false, foreign_key: {to_table: :localidades}
  end
end

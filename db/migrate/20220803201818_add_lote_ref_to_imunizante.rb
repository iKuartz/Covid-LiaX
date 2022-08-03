class AddLoteRefToImunizante < ActiveRecord::Migration[7.0]
  def change
    add_reference :imunizantes, :lote, null: false, foreign_key: {to_table: :lotes}
  end
end

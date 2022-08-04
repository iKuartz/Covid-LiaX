# frozen_string_literal: true

# Essa tabela tem em cada linha uma sequencia de numeros que correspondem
# às IDs das vacinas na tabela detalhes das vacinas, e tem o fim de
# mostrar qual sequência de aplicações é permitida. Por exemplo,
# uma linha contendo 1-1-2-3 significa que após a primeira dose da vacina
# de ID 1, a segunda, terceira e quarta doses devem ser as vacinas de ID 1-2-3.
# Eu poderia tê-la relacionado à Detalhes da vacina, mas achei que a
# manutencao posterior do código ficaria mais fácil mantendo separada.

class CreateRestricaos < ActiveRecord::Migration[7.0]
  def change
    create_table :restricaos do |t|
      t.integer :primeira_dose
      t.integer :segunda_dose
      t.integer :terceira_dose
      t.integer :quarta_dose

      t.timestamps
    end
  end
end

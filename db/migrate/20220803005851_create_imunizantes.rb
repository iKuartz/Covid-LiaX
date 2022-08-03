# frozen_string_literal: true

class CreateImunizantes < ActiveRecord::Migration[7.0]
  def change
    create_table :imunizantes do |t|
      t.date :data_de_aplicacao

      t.timestamps
    end
  end
end

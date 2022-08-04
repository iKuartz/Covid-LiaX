# frozen_string_literal: true

class CreateLotes < ActiveRecord::Migration[7.0]
  def change
    create_table :lotes do |t|
      t.string :codigo
      t.integer :quantidade

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateInventarios < ActiveRecord::Migration[7.0]
  def change
    create_table :inventarios, &:timestamps
  end
end

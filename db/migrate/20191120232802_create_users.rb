# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :dni
      t.integer :status
      t.string :ruc

      t.timestamps
    end
  end
end

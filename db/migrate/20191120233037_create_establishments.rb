class CreateEstablishments < ActiveRecord::Migration[5.2]
  def change
    create_table :establishments do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lng
      t.integer :status
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

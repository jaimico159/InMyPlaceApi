class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title
      t.text :description
      t.datetime :published_at
      t.string :photo_url
      t.references :establishment, foreign_key: true

      t.timestamps
    end
  end
end

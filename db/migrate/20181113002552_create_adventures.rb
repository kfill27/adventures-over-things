class CreateAdventures < ActiveRecord::Migration[5.2]
  def change
    create_table :adventures do |t|
      t.string :title
      t.text :description
      t.string :cost
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end

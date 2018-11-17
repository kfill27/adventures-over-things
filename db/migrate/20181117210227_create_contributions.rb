class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.references :contributor, foreign_key: true
      t.string :amount
      t.references :adventure, foreign_key: true

      t.timestamps
    end
  end
end

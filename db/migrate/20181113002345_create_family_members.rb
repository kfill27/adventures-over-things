class CreateFamilyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :family_members do |t|
      t.string :full_name
      t.string :age
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end

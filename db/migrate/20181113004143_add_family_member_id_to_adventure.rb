class AddFamilyMemberIdToAdventure < ActiveRecord::Migration[5.2]
  def change
    add_column :adventures, :family_member_id, :integer
  end
end

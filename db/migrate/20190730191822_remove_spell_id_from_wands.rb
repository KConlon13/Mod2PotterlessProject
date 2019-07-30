class RemoveSpellIdFromWands < ActiveRecord::Migration[5.2]
  def change
    remove_column :wands, :spell_id, :integer
  end
end

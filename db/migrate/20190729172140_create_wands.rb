class CreateWands < ActiveRecord::Migration[5.2]
  def change
    create_table :wands do |t|
      t.string :wood
      t.string :length
      t.string :flexibility
      t.string :core
      t.belongs_to :user, foreign_key: true
      t.belongs_to :spell, foreign_key: true

      t.timestamps
    end
  end
end

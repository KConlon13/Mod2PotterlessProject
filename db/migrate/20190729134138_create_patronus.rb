class CreatePatronus < ActiveRecord::Migration[5.2]
  def change
    create_table :patronus do |t|
      t.string :animal
      t.string :meaning
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

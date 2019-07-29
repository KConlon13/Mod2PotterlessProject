class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :motto
      t.string :description
      t.string :logo_img_url

      t.timestamps
    end
  end
end

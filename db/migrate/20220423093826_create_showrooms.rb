class CreateShowrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :showrooms do |t|
      t.string :name
      t.string :adress
      t.string :phone01
      t.string :phone02
      t.string :email
      t.string :image_url
      t.string :geolocation

      t.timestamps
    end
  end
end

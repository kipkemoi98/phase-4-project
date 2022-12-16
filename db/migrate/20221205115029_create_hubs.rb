class CreateHubs < ActiveRecord::Migration[7.0]
  def change
    create_table :hubs do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :website_url
      t.string :description
      t.string :founder

      t.timestamps
    end
  end
end

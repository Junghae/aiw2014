class CreateSlideImages < ActiveRecord::Migration
  def change
    create_table :slide_images do |t|
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end

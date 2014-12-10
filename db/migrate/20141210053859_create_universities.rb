class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.integer :university_cate_id
      t.string :name
      t.string :establish_year
      t.string :address
      t.text :contact
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end

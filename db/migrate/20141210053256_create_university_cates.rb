class CreateUniversityCates < ActiveRecord::Migration
  def change
    create_table :university_cates do |t|
      t.string :name

      t.timestamps
    end
  end
end

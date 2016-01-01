class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
    t.string :title
    t.string :image_url
    t.string :description

      t.timestamps null: false
    end
  end
end

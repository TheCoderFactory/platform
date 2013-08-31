class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.references :week, index: true
      t.string :title
      t.text :intro
      t.string :url

      t.timestamps
    end
  end
end

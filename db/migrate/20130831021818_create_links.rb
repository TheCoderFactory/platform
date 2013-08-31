class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :week, index: true
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end

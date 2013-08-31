class CreateInclasses < ActiveRecord::Migration
  def change
    create_table :inclasses do |t|
      t.references :week, index: true
      t.integer :day
      t.string :title
      t.text :intro

      t.timestamps
    end
  end
end

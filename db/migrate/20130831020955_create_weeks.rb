class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :number
      t.string :title
      t.text :intro
      t.boolean :active

      t.timestamps
    end
  end
end

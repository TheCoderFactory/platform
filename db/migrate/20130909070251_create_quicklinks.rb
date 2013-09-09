class CreateQuicklinks < ActiveRecord::Migration
  def change
    create_table :quicklinks do |t|
      t.string :icon
      t.string :name
      t.string :url
      t.boolean :active
      t.boolean :important

      t.timestamps
    end
  end
end

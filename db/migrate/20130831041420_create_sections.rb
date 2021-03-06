class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :inclass, index: true
      t.integer :priority
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end

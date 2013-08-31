class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :week, index: true
      t.string :title
      t.text :intro

      t.timestamps
    end
  end
end

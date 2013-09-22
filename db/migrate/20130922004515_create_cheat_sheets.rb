class CreateCheatSheets < ActiveRecord::Migration
  def change
    create_table :cheat_sheets do |t|
      t.string :name
      t.string :icon
      t.string :gist

      t.timestamps
    end
  end
end

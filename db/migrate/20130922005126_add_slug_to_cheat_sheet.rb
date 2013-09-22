class AddSlugToCheatSheet < ActiveRecord::Migration
  def change
    add_column :cheat_sheets, :slug, :string
  end
end

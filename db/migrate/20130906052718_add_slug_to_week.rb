class AddSlugToWeek < ActiveRecord::Migration
  def change
    add_column :weeks, :slug, :string
    add_index :weeks, :slug, unique: true
  end
end

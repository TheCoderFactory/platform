class AddGistToSection < ActiveRecord::Migration
  def change
    add_column :sections, :gist, :string
  end
end

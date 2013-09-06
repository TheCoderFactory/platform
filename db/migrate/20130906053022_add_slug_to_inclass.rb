class AddSlugToInclass < ActiveRecord::Migration
  def change
    add_column :inclasses, :slug, :string
    add_index :inclasses, :slug, unique: true
  end
end

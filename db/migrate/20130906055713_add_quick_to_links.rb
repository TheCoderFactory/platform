class AddQuickToLinks < ActiveRecord::Migration
  def change
    add_column :links, :quick, :boolean
  end
end

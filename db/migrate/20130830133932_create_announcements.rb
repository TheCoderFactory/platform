class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :body
      t.string :icon
      t.string :link
      t.boolean :publish
      t.string :alert_level

      t.timestamps
    end
  end
end

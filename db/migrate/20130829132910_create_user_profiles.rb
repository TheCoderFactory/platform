class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.references :user, index: true
      t.string :picture
      t.text :background
      t.text :hobbies
      t.string :facebook
      t.string :linkedin
      t.string :twitter
      t.string :website
      t.string :nickname
      t.string :slug
      t.string :github
      t.string :phone

      t.timestamps
    end
  end
end

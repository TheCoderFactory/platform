class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.references :week, index: true
      t.string :title
      t.text :intro

      t.timestamps
    end
  end
end

class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string  "user",        limit: 255
      t.integer "question_id", limit: 11
      t.integer "answer_id",   limit: 11
      t.string  "url",         limit: 255
      t.string  "title",       limit: 255

      t.timestamps null: false
    end
  end
end

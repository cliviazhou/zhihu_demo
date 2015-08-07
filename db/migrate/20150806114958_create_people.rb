class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string  "userlink",  limit: 255
      t.string  "nickname",  limit: 255
      t.string  "bio",       limit: 255
      t.string  "weibo",     limit: 255
      t.string  "location",  limit: 255
      t.string  "business",  limit: 255
      t.string  "career",    limit: 255
      t.string  "education", limit: 255
      t.integer "upvote",    limit: 11
      t.integer "thanks",    limit: 11
      t.integer "collected", limit: 11
      t.integer "share",     limit: 11
      t.integer "followees", limit: 11
      t.integer "followers", limit: 11
      t.integer "views",     limit: 11
      t.timestamps null: false
    end
  end
end

class Bookmark < ApplicationRecord
  belongs_to :film
  belongs_to :list
end

class CreateBookmarks < ActiveRecord: :Migration[6.1]
  def change
    create_table :bookmarks do |t|
    t.text :comment
    t.references :film, null: false, foreign_key: true
    t.references :list, null: false, foreign_key: true

    t.timestamps
  end
end

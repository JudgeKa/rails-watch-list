class Film < ApplicationRecord
end

class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.float :rating

      t.timestamps
    end

    add_index :films, :title, unique: true
    add_index :films, :overview, unique: true
  end
end

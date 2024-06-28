class CreateJoinTableAuthorsGenres < ActiveRecord::Migration[6.1]
  def change
    create_join_table :authors, :genres do |t|
      t.index :author_id
      t.index :genre_id
    end
  end
end
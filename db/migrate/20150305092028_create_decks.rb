class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :d_title

      t.timestamps
    end
  end
end

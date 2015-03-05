class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.belongs_to :user, index: true
      t.belongs_to :deck, index: true
      t.belongs_to :guess, index: true
      t.timestamps
    end
  end
end

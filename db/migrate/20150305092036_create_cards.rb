class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :deck
      t.string :question
      t.string :answer
      t.timestamps
    end
  end
end

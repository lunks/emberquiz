class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :question
      t.string :answer

      t.timestamps
    end
  end
end

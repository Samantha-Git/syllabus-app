class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title, null: false
      t.string :weekday, null: false
      t.integer :period, null: false
      t.integer :teacher_id, null: false, foreign_key: true
      t.integer :lecture_id, null: false, foreign_key: true
      t.timestamps
    end

    add_index :subjects, :title
  end
end

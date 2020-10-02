class CreateLectures < ActiveRecord::Migration[6.0]
  def change
    create_table :lectures do |t|
      t.string :title, null: false
      t.string :date, null: false
      t.timestamps
    end
  end
end

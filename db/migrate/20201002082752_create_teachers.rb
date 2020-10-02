class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name, null: false
      t.timestamps
    end

    add_index :teachers, :name
  end
end

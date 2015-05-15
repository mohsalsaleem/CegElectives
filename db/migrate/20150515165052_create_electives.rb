class CreateElectives < ActiveRecord::Migration
  def change
    create_table :electives do |t|
      t.string :course_id
      t.string :name
      t.text :description
      t.string :teacher
      t.string :students
      t.text :unit_1
      t.text :unit_2
      t.text :unit_3
      t.text :unit_4
      t.text :unit_5

      t.timestamps null: false
    end
  end
end

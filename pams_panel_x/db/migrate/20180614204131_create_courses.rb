class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.float :total_in_class_hours

      t.timestamps
    end
  end
end

class CreatePersonCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :person_courses do |t|
      t.references :person, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end

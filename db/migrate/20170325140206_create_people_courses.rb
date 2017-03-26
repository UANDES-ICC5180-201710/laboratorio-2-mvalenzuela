class CreatePeopleCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :people_courses do |t|
      t.references :person, foreign_key:true
      t.references :course, foreign_key:true

      t.timestamps
    end
  end
end

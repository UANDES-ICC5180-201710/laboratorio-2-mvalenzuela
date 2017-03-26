class PersonCourse < ApplicationRecord
  belongs_to :person_id
  belongs_to :course_id
end

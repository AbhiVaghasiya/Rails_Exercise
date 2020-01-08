class StandardsTeacher < ApplicationRecord
  belongs_to :standard_id
  belongs_to :teacher_id
end

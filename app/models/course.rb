class Course < ApplicationRecord
  has_many :programs, dependent: :destroy, inverse_of: :courses
end

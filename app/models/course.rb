class Course < ApplicationRecord
  belongs_to :program, inverse_of: :courses

  validates :program, presence: true
end

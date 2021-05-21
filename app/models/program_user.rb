class ProgramUser < ApplicationRecord
  belongs_to :program
  belongs_to :user

  validates :program, presence: true
  validates :user, presence: true
end

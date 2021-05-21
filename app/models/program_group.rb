class ProgramGroup < ApplicationRecord
  belongs_to :program
  belongs_to :group

  validates :program, presence: true
  validates :group, presence: true
end

class Group < ApplicationRecord
  has_many :users, dependent: :destroy, inverse_of: :group
  has_many :program_groups, dependent: :destroy
  has_many :programs, through: :program_groups
end

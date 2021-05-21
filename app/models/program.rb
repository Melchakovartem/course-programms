class Program < ApplicationRecord
  has_many :courses, dependent: :destroy, inverse_of: :program
  has_many :program_groups, dependent: :destroy
  has_many :program_users, dependent: :destroy
  has_many :groups, through: :program_groups
  has_many :users, through: :program_users

  validates :name, presence: true
end

class Program < ApplicationRecord
  belongs_to :course, inverse_of: :program
  has_many :program_groups, dependent: :destroy
  has_many :program_users, dependent: :destroy
  has_many :groups, through: :program_groups
  has_many :users, through: program_users

  validates :course, presence: true
  validates :name, presence: true
end

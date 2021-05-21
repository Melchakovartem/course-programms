class User < ApplicationRecord
  belongs_to :group, inverse_of: :users
  has_many :program_users, dependent: :destroy
  has_many :programs, through: :program_users

  validates :group, presence: true
  validates :name, presence: true
  validates :email, presence: true
end

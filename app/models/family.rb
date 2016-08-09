class Family < ApplicationRecord
  has_many :members, dependent: :destroy
  validates :name, presence: true
end

class Family < ApplicationRecord
  has_many :mambers, dependent: :destroy
  validates :name, presence: true
end

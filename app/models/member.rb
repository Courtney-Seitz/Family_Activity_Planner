class Member < ApplicationRecord
  belongs_to :family
  has_many :tasks, dependent: :destroy
  validates :name, presence: true

end

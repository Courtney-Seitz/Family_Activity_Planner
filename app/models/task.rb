class Task < ApplicationRecord
  belongs_to :member
  validates :description, presence: true

end

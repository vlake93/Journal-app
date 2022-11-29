class Task < ApplicationRecord
  validates :name, :details, presence: true
end

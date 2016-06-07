class Task < ApplicationRecord
  scope :completed, -> { where(status: true) }
  scope :pending, -> { where(status: false) }
end

class Case < ApplicationRecord
  belongs_to :detective

  validates :title, presence: true
end

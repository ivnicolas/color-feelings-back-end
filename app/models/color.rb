class Color < ApplicationRecord
  belongs_to :feeling

  validates :name, uniqueness: true
end

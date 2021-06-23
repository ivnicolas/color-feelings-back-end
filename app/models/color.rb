class Color < ApplicationRecord
  belongs_to :feeling

  validates :name, uniqueness: true , length: { maximum: 19 }
end

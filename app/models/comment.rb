class Comment < ApplicationRecord
  validates :text, presence: true
  validates :image, presence: true
end

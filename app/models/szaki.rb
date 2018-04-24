class Szaki < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews
  validates :title, presence: true
  validates :category_id, presence: true
  validates :description, presence: true
  validates :worktype, presence: true
end

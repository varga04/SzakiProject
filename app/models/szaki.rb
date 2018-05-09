class Szaki < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :category
  has_many :reviews
  validates :title, presence: true
  validates :category_id, presence: true
  validates :description, presence: true
  validates :worktype, presence: true
end

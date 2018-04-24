class Review < ApplicationRecord
  belongs_to :szaki
  belongs_to :user
end

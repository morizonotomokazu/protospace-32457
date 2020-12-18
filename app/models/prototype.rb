class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments,dependent: :destroy
  has_one_attached :image
  with_options presence: true do
  validates :image 
  validates :title 
  validates :catch_copy 
  validates :concept
  end
  
end

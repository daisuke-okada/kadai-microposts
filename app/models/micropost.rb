class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum:25 }
  
  has_many :favorites
	has_many :favored, through: :favorites, source: :user
	
end

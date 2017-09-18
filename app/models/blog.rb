class Blog < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  has_many :iines, dependent: :destroy
  has_many :users, through: :iines



end

class Product < ActiveRecord::Base
  belongs_to :category
  has_many :reviews

  validates :title, :description, presence: true
end

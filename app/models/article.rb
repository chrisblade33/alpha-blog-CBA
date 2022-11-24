class Article < ApplicationRecord
  belongs_to :user

  validates :titre, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 200 }

end
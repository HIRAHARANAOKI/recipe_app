class Recipe < ApplicationRecord
  belongs_to :user # レシピが必ずユーザー一人に基づく
  attachment :image

  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end

end

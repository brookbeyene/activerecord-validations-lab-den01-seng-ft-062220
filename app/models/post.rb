class Post < ActiveRecord::Base
  validates :title, presence: true, on: :create
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]} 
  
  def title
    errors.add(:title, "validation")  unless :
  end
  
end

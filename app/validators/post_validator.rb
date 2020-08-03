class PostValidator < ActiveModel::Validator
  def Validate(record)
    unless record.title.in("Won't Believe", "Secret", "Top [number]") 
      record.error[:title] << "is invalid if not clickbait"
    end
  end
    
end
class Post 
  include ActiveModel::Validations
  validates_with PostValidator
end
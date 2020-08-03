class PostValidator < ActiveModel::Validator
  def Validate(record)
    unless record.title.in("Won't Believe", "Secret", "Top [number]") 
      record.error[:title] << "Validation"
end
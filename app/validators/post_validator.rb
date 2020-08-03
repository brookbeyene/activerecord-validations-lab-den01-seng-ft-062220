class PostValidator < ActiveModel::Validator
  def Validate(record)
    unless record.title.in()    
end
require 'pry'
class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless  record.title != nil && record.title.match?(/((Won't Believe)|(Secret)|(Top \d\+)|(Guess))+/)
      record.errors[:title] <<  "non-clickbait"
    end
  end
end

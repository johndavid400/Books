class Comment < ActiveRecord::Base
  
  belongs_to :book

  def to_s
    "#{author}: #{text}"
  end

end

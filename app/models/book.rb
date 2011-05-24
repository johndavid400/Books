class Book < ActiveRecord::Base

  has_many :comments

  def self.search(search)
    search_condition = "%" + search + "%"
    results = find(:all, :conditions => ['title LIKE ?', search_condition])
  end

end

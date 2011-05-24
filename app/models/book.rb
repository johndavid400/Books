class Book < ActiveRecord::Base

  has_many :comments

  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
  end

end

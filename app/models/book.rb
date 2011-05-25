class Book < ActiveRecord::Base

  validates_presence_of(:title, :message => "You must provide a title!")
  validates_uniqueness_of(:title)


  has_many :comments

  def self.search(search)
    search_condition = "%" + search + "%"
    results = find(:all, :conditions => ['title LIKE ?', search_condition])
  end

end

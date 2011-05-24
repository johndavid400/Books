require 'spec_helper'

describe Book do

  it "should have many comments" do
    book = Book.create
    comment1 = Comment.create(:book => book)
    comment2 = Comment.create(:book => book)
    book.comments.should include comment1
    book.comments.should include comment2
  end
  
  describe ".search" do
    
    it "it should search for a book" do
      book = Book.create(:title => "book1", :note => "book1")
      Book.search("book1").should include book
    end

  end 

end


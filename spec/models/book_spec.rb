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

    it "should search for a book" do
      book = Book.create(:title => "book1", :note => "book1")
      Book.search("book1").should include book
    end

    it "should not be case sensitive" do
      book = Book.create(:title => "BAR")
      Book.search("bar").should include book
    end

    it "should return partial results" do
      book = Book.create(:title => "BARAMETRIC")
      Book.search("bar").should include book
    end

    it "should not return results from a longer search" do
      book = Book.create(:title => "bar")
      Book.search("BARAMETRIC").should_not include book
    end

  end

end


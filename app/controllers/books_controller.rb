class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find params[:id]    
  end 

  def create
    @book = Book.new(params[:book])
    if @book.save
      flash[:notice] = "New book created!"
    else
      flash[:error] = "There was a problem creating the book."
    end
    redirect_to books_path
  end

  def destroy
    @book.destroy
    flash[:notice] = "Book deleted"
    redirect_to books_path
  end  

  def search
    @book = Book.all
  end

end

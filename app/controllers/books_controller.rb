class BooksController < ApplicationController
  helper :all  
  protect_from_forgery  


  def index
    @book = Book.new
    if params[:q] && !Book.search(params[:q]).empty?
      @books = Book.search(params[:q])
    else
      @books = Book.all
    end
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

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
   if @book.update_attributes(params[:book])
      flash[:notice] = "Updated successfully"
    else
      flash[:error] = "Update failed"
    end
    redirect_to books_path
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
       flash[:notice] = "Book deleted"
    else
      flash[:error] = "Delete error"
    end
    redirect_to books_path
  end

   private
   def mobile_device?
     request.user_agent =~ /Mobile|webOS/
   end
   helper_method :mobile_device?

end

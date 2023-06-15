class BooksController < ApplicationController
 def index 
  
  end
 def new
   @books = Book.all
   @book = Book.new
 end
 
  def show
    @book = Book.find(params[:id])  
  end
 
 def create
  @books = Book.all
   @book = Book.new(book_params)
   if @book.save
    flash[:notice] = "Book was successfully submitted."
     redirect_to @book
   else
    render :new
   end
 end
 
   def edit
    @book = Book.find(params[:id])
   end
   
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "Book was successfully updated."
    redirect_to book_path(book.id)  
  end
  
  def destroy
   book = Book.find(params[:id])
   book.destroy
   flash[:notice] = "Book was successfully destroyed."
   redirect_to '/books/new'
  end
  
 private
 def book_params
    params.require(:book).permit(:title, :body)
  end
end
  
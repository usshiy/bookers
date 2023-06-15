class BooksController < ApplicationController
 def top
  
  end
 def index 
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
    flash[:notice] = "Book was successfully created."
     redirect_to @book
   else
    render :index
   end
 end
 
   def edit
    @book = Book.find(params[:id])
    
   end
   
  def update
   @book = Book.find(params[:id])
    @book.update(book_params)
     if @book.save
    flash[:notice] = "Book was successfully created."
     redirect_to @book
   else
    render :edit
   end
 end
  
  def destroy
   book = Book.find(params[:id])
   book.destroy
   flash[:notice] = "Book was successfully destroyed."
   redirect_to '/books'
  end
 
private
 def book_params
    params.require(:book).permit(:title, :body)
  end
end
#class BooksController < ApplicationController
 #end
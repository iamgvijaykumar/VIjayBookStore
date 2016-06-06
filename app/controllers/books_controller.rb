class BooksController < ApplicationController
  def new
    @page_title = 'Add Book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new

  end

  def create
    @book = Book.new(book_params)
    @book.save
    flash[:notice] = "Book has been successfully Created"
    redirect_to books_path

  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    flash[:notice] = "Book has been successfully Updated"
    redirect_to books_path

  end

  def edit
    @book = Book.find(params[:id])

  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book has been successfully Deleted"
    redirect_to books_path

  end

  def index
    @books = Book.all
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end

private
  def book_params
  params.require(:book).permit!
  end

end

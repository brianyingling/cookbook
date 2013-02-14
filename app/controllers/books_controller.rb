class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def new
    @book = Book.new
  end
  def create
    book = Book.create(params[:book])
    redirect_to(books_path)
  end
  def update
    book = Book.find(params[:id])
    book.update_attributes(params[:book])
    redirect_to books_path

  end
  def edit
    @book = Book.find(params[:id])
  end
  def show
    @book = Book.find(params[:id])
  end
  def destroy
    book = Book.find(params[:id])
    book.delete
    redirect_to books_path
  end
end
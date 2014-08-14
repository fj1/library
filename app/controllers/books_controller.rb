class BooksController < ApplicationController

  def index
    @books = Book.all
    # shows @books as a json
    # render json: @books, include: :authors
    # i might then be able to use @books like an api
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    author = Author.new(author_params)
    # use ! so the form will throw an error
    book.save!
    author.save!
    redirect_to root_path
    AuthorBook.create!({book_id: book.id, author_id: author.id})
  end

  def edit
    @book = Book.find(book_params[:id])
  end

  def update
    @book = Book.find(book_params[:id])
    @book.update(book_params)
    redirect_to root_path
  end

  # strong params
  private
  def book_params
    params.require(:book).permit(:title, :category, :comment, 
      :on_loan, :read, :is_digital, :is_owned)
  end

  def author_params
    params.require(:book).permit(:first_name, :last_name)
  end

end





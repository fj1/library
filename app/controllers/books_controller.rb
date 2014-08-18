class BooksController < ApplicationController

  def index
    @books = Book.all
    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @books }
    end
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
    redirect_to '/books'
    AuthorBook.create!({book_id: book.id, author_id: author.id})
  end

  def edit
    @book = Book.find(book_params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(params.require(:book).permit(:id))
    redirect_to '/books'
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    render status: 200, json: { status: 200 }
  end

  # strong params
  private
  def book_params
    params.require(:book).permit(:title, :category, :comment, 
      :on_loan, :read, :is_digital, :is_owned)
  end

  def author_params
    params.require(:book).permit(:full_name)
  end

end





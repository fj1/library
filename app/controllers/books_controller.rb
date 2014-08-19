class BooksController < ApplicationController

  def index
    @books = Book.all
    @new_book = Book.new(on_loan: false, read: false, is_digital: false, is_owned: false)
    @new_book.authors.build
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
    @new_book = Book.new(book_params)
    if @new_book.save
      author_params.each do |name|
        author = Author.new(full_name: name)
        author.save!
        AuthorBook.create!({book_id: book.id, author_id: author.id})
      end
      redirect_to '/books'
    else
      @books = Book.all
      author_params.each do |name|
        puts "name is " + name
        @new_book.authors.build(full_name: name)
      end
      render 'index'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @updated_book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to '/books'
    else
      @books = Book.all 
      render 'index'
    end
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
    params[:authors]
  end

end





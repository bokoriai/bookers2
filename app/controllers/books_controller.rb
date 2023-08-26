class BooksController < ApplicationController
  def new
    
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      @books = Book.all
      render :index
    end
  end
  
  def index
    @book = Book.new
    @books = Book.all
    @user = User.find(current_user.id)
  end

  def show
    @book = Book.find(params[:id])
    @books = Book.all
    @user = @book.user
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
    def book_params
    params.require(:book).permit(:title, :body)
    end
end

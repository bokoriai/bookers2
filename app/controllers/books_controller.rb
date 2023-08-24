class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new
    if @book.save
      redirect_to book_path(current_user.id)
    else
      render :index
    end
  end
  
  def index
  end

  def show
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end
    
end

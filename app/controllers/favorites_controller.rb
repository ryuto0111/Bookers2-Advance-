class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    favorite = current_user.favorites.new(book_id: params[:book_id])
    @book = Book.find(params[:book_id])
    favorite.save
  end

  def destroy
    favorite = current_user.favorites.find_by(book_id: params[:book_id])
    @book = Book.find(params[:book_id])
    favorite.destroy
  end

end

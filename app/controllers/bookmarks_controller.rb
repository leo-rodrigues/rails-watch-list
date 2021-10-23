class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new
    if @bookmark.save
      redirect_to list_path(@bookmark)
    else
      render 'new'
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private

  def restaurant_params
    params.require(:bookmark).permit(:comment)
  end
end

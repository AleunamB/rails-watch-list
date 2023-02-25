class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def create
    @bookmark = Bookmark.new(list_params)
    @bookmark.save
    redirect_to list_path(@bookmark)
  end

  def new
    @bookmark = Bookmark.new
  end
end

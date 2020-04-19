class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]


  def index
    @pages = Page.all
  end

  def show
    # set_page # this is all taken care of with the before method now
    # @page = Page.find(params[:id]) # this is taken care of in the set_page method under private now
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to @page
  end

  def edit
    # set_page
    # @page = Page.find(params[:id])
  end

  def update
    # set_page
    # @page = Page.find(params[:id])
    @page.update(page_params)
    redirect_to @page
  end

def destroy
# set_page
  # @page = Page.find(params[:id])
  @page.destroy
  redirect_to pages_path
end


private

def page_params
  params.require(:page).permit(:title, :body, :slug)
end

def set_page
  @page = Page.find(params[:id])
end

end

class PageController < ApplicationController
  def index
    @pages = Page.order(:position)
    render('index')
  end

  def show
    @page = Page.find(params[:id])
    render('show')
  end
  

  def new
    @page = Page.new
    render('new')
  end

  def create
    @page = Page.new(page_param)
      if @page.save
      redirect_to ({:action=> 'index',:id=> @page.id})

       else
    render ('new')
       end
  end

  def edit
    @page = Page.find(params[:id])
    render('edit')
  end

  def update

    @page = Page.find(params[:id])
    if @page.update_attributes(page_param)
       redirect_to ({:action=> 'index',:id=> @page.id})

       else
    render ('new')     
end
  end

  def delete
    @page = Page.find(params[:id])
    render('delete')
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
   redirect_to ({:action=> 'index'})

  end

private

def page_param
  params.require(:page).permit(:Name,:position,:visible)
end

end


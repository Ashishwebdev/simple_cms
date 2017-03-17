class DemoController < ApplicationController
	layout false
	def hello
		@array=[1,2,3,4,5]
    @id=params['id']
    @page=params[:page]
		render('hello')
	end
	
  def index
  	render('index')
  end
  def other_hello
  	redirect_to(:action => 'index')
  end


  def google
  	redirect_to ('https//www.google.co.in')
  end
end

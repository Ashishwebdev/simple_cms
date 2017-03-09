class DemoController < ApplicationController
	layout false
	def hello
		render('index')
	end
	
  def index
  	render('hello')
  end
end

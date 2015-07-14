class YoyosController < ApplicationController
	def index
		@yoyos = Yoyo.all
        render :index
	end
	def new
		@yoyo = Yoyo.new
	end
	def create
		# name = params[:yoyo][:name]
		# url = params[:yoyo][:url]
		# Yoyo.create(name: name, url: url)
		@yoyo = Yoyo.create yoyo_params
		redirect_to "/yoyos"
	end
	def update
  		@yoyo = Yoyo.find(params[:id])
 		@yoyo.update(yoyo_params)
  		redirect_to "/yoyos"
	end
	def edit
        @yoyo = Yoyo.find(params[:id])
   	end
   	def show
        @yoyo = Yoyo.find(params[:id])
        render :show
    end 
	private
		def yoyo_params
			params.require(:yoyo).permit(:name,:url)
		end
end
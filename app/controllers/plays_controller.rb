class PlaysController < ApplicationController

	def index
	end

	def new
		@play = Play.new
	end

	def create
		@play = Play.new
		if @play.save
			redirect_to "index"
		end
	end

	def edit
	end

	def show
	end

	private

	def play_params
		params.require(:play).permit(:title, :description, :director)
	end

end

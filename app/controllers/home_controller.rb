class HomeController < ApplicationController
	before_action :authenticate_user!
  before_action :correct_user?, :except => [:index]

	def index
    @user = current_user
  end
end

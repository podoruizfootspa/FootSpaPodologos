class Private::BaseController < ApplicationController
	layout 'private_layout'

	before_action :authenticate_user!, except: [:create]

end

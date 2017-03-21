class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	rescue_from CanCan::AccessDenied do |exception|
		if request.env["HTTP_REFERER"].present? and request.env["HTTP_REFERER"] != request.env["REQUEST_URI"]
			redirect_to :back, :alert => exception.message
		else
			redirect_to root_path, :alert => exception.message
		end
	end
end

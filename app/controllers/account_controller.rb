class AccountController < ApplicationController
	before_filter :current_user_required
end

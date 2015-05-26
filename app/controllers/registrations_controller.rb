class RegistrationsController < Devise::RegistrationsController

	def new
		@user = User.new
	end

	def edit
		@user = User.find(current_user.id)
	end

	def create
		@user = User.new(new_params)
		if @user.save
			redirect_to root_path, notice: "User created"
		else
			render "new"
		end
	end

	def update
		@user = User.find(current_user.id)
		if @user.update(new_params)
			set_flash_message :notice, :updated
			redirect_to after_update_path_for(@user)
		else
			render "edit"
		end
	end

	private

	def new_params
		params.require(:user).permit(:email, :password, :password_confirmation,
										:faculty, :student, :name, :address,
										:pin, :mobile)
	end
end

class UsersBackoffice::ProfilesController < UsersBackofficeController
  before_action :set_profile, only: %i[edit update destroy show]
  
  def show
  end
  
  def edit
  end

  def update
    if @profile.update(params_profile)
      redirect_to users_backoffice_profile_path(current_user.id), notice: 'Publicação atualizado com sucesso.'
    else
      render :edit 
    end
  end
  
  private

  def params_profile
    params.require(:user).permit(:email, :description, :image, :password, :password_confirmation, :full_name, :identification, :birth_date, :age)
  end    

  def set_profile
    @profile = User.find(params[:id])
  end
end

class AdminsBackoffice::ProfilesController < AdminsBackofficeController
    before_action :set_profile, only: %i[edit update destroy show]
  
    def index
      @profile = Admin.find(current_admin.id)
    end
    
    def show
    end
    
    def edit
    end
  
    def update
      if @profile.update(params_profile)
        redirect_to admins_backoffice_publications_path, notice: 'Publicação atualizado com sucesso.'
      else
        render :edit 
      end
    end
    
  
    private
  
    def params_profile
      params.require(:admin).permit(:email, :description, :image, :password, :password_confirmation, :full_name, :identification, :birth_date, :age)
    end    
  
    def set_profile
      @profile = Admin.find(params[:id])
    end
end

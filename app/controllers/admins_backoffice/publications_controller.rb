class AdminsBackoffice::PublicationsController < AdminsBackofficeController
  before_action :set_publication, only: %i[edit update destroy show]
  before_action :set_subject, only: %i[new create edit update]

  def index
    @publications = Publication.all
  end

  def my_publics
    @publications = Publication.where(admin_id: current_admin.id)
  end

  def new
    @publication = Publication.new
  end
  
  def create
    @publication = Publication.new(params_publication)
      if @publication.save
        redirect_to admins_backoffice_publications_path, notice: 'Publicação criado com sucesso.'
      else
        render :new
      end
  end
  
  def show
  end
  
  def edit
  end

  def update
    if @publication.update(params_publication)
      redirect_to admins_backoffice_publications_path, notice: 'Publicação atualizado com sucesso.'
    else
      render :edit 
    end
  end
  
  def destroy
    if  @publication.destroy
      redirect_to admins_backoffice_publications_path, notice: 'Publicação excluído com sucesso!'
    else
      render :index
    end
  end

  private

  def params_publication
    params.require(:publication).permit(:admin_id, :subject_id, :title, :description, :image, :reference_link)
  end    

  def set_publication
    @publication = Publication.find(params[:id])
  end

  def set_subject
    @subject = Subject.all.pluck(:description, :id)
  end

end

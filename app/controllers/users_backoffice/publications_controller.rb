class UsersBackoffice::PublicationsController < UsersBackofficeController

  def index
    @publications = Publication.all.page(params[:page]).per(4)
  end
  
  def show
    @publication = Publication.find(params[:id])
  end

end

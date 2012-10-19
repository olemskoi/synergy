Spree::BaseController.class_eval do       
  def render_404(exception = nil)
    respond_to do |format|
      format.html do
        render :status => :not_found, :template => 'errors/404'
      end
      format.all { render :status => :not_found, :nothing => true }
    end
  end
end
OrdersController.class_eval do
  def sberbank_invoice
    @order = Order.find_by_number!(params[:id])
    unless @order.payment_method.is_a?(PaymentMethod::SberBankInvoice)
      render_404 and return
    end
    @preferences = @order.payment_method.preferences
    render :layout => false
  end
  
  def juridical_invoice
    @order = Order.find_by_number!(params[:id])
    @user = @order.user
    @synergy_configuration = Spree::Synergy::Config.get
    render :layout => false
  end
end

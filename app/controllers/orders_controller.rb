class OrdersController < InheritedResources::Base

def new
  @order =Order.new
end

  def create
    @order=Order.new(order_params)
    @order.ip_address = request.remote_ip
    if @order.save!
      if @order.purchase
        redirect_to "http://google.com"
      else
        redirect_to "http://noob-club.ru"
      end
      end
    # else
    #   render :action => 'new'
    end



  private

    def order_params
      params.require(:order).permit(:new, :cart_id, :ip_address, :first_name, :last_name, :card_type, :card_expires_on, :card_verification, :card_number)
    end
end


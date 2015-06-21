class OrdersController < InheritedResources::Base

def new
  @order =Order.new
end



def create
  @order = Order.build_order(params[:order])
  @order.ip_address = request.remote_ip
  if @order.save
    if @order.purchase
      redirect_to "qweqw.com"
    else
      redirect_to "qwesqw.com"
    end
  else
    render :action => 'new'
  end
end





private

    def order_params
      params.require(:order).permit(:new, :order_id, :ip_address, :first_name, :last_name, :card_type, :card_expires_on, :card_verification, :card_number)
    end
end


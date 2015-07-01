class OrdersController < InheritedResources::Base

def new
  @order =Order.new
end



def create
  @order = Order.create(order_params)
  @order.ip_address = request.remote_ip
    if @order.purchase
      redirect_to "qweqw.com"
    else
      redirect_to "qwesqw.com"
    end
  end






private

    def order_params
      params.require(:order).permit(:ip_address, :first_name, :last_name, :card_type, :card_expires_on, :card_verification, :card_number)
    end
end


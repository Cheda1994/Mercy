class Transaction < ActiveRecord::Base

  def paypal_url(return_path)
    values = {
        business: "cheda1994@gmail.com",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.paypal_host}#{return_path}" ,
        invoice: id,
        amount: "1",
        item_name: "Shadow help",
        item_number: "1",
        quantity: '1',
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end

end

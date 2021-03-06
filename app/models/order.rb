class Order < ActiveRecord::Base
  include ActiveMerchant
  has_many :order_transactions

  attr_accessor :card_number

  # validate :validate_card , :on=> :create
  def purchase
    response = GATEWAY.purchase(price_in_cents, credit_card, purchase_options)
    # create_card_transaction(:action => "purchase", :amount => price_in_cents, :response => response)
     response.success?
  end

  def price_in_cents
    (5*100).round
  end

  private

  def purchase_options
    {
        :ip => ip_address,
        :billing_address => {
            :name     => "Mercy",
            :address1 => "123 Main St.",
            :city     => "Winterfell",
            :state    => "Center",
            :country  => "US",
            :zip      => "00000"
        }
    }
  end

  def validate_card
    # unless credit_card.valid?
    #   credit_card.errors.full_messages.each do |message|
    #     # errors.add_to_base message
    #   end
    # end
  end

  def credit_card
    @credit_card ||= ActiveMerchant::Billing::CreditCard.new(
        # :type               => card_type,
        # :number             => card_number,
        # :verification_value => card_verification,
        # :month              => card_expires_on.month,
        # :year               => card_expires_on.year,
        # :first_name         => first_name,
        # :last_name          => last_name
    :type               => "Visa",
    :number             => "1111111111111111",
    :verification_value => "383",
    :month              => "5",
    :year               => "2018",
    :first_name         => 'Daniel',
    :last_name          => "Chernovsky"
    )
  end
end
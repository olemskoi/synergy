OrdersHelper.module_eval do
  def sberbank_address_line(address)
    arr, zipcode, city = [], address.zipcode, address.city
    address12 = [ address.address1, address.address2 ].join

    [ zipcode, city, address12 ].each{ |i| arr << i if i.present? }

    arr.join(', ')
  end
end

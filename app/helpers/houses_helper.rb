module HousesHelper
  def currency(value)
    number_to_currency(value)
  end

  def size(value)
    number_with_delimiter(value, :delimiter => ',')
  end
end

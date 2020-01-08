class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :address, :total_price, :created_at
  attribute :salad, &:salads_menu
  attribute :burger, &:burgers_menu
  attribute :beverage, &:beverages_menu
  attribute :customer, &:customer
end

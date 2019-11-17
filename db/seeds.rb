# frozen_string_literal: true

menu_list = [
  ['Chicken curry', rand(2.2...76.9).round(2), 'First', 'Monday'],
  ['Spanish tortilla', rand(2.2...76.9).round(2), 'First', 'Monday'],

  ['Chorizo risotto', rand(2.2...76.9).round(2), 'Main', 'Monday'],
  ['Venison shanks', rand(2.2...76.9).round(2), 'Main', 'Monday'],

  ['Juniper', rand(2.2...76.9).round(2), 'Drinks', 'Monday'],
  ['Redcurrants', rand(2.2...76.9).round(2), 'Drinks', 'Monday'],


  ['Fish cakes', rand(2.2...76.9).round(2), 'First', 'Tuesday'],
  ['Asian salmon', rand(2.2...76.9).round(2), 'First', 'Tuesday'],

  ['Sweet potato', rand(2.2...76.9).round(2), 'Main', 'Tuesday'],
  ['Sliced fennel', rand(2.2...76.9).round(2), 'Main', 'Tuesday'],

  ['Almond', rand(2.2...76.9).round(2), 'Drinks', 'Tuesday'],
  ['Green Tea', rand(2.2...76.9).round(2), 'Drinks', 'Tuesday'],


  ['Roasted squash', rand(2.2...76.9).round(2), 'First', 'Wednesday'],
  ['Couscous salad', rand(2.2...76.9).round(2), 'First', 'Wednesday'],

  ['Chicken in a pot', rand(2.2...76.9).round(2), 'Main', 'Wednesday'],
  ['Wild rice salad', rand(2.2...76.9).round(2), 'Main', 'Wednesday'],

  ['Wine', rand(2.2...76.9).round(2), 'Drinks', 'Wednesday'],
  ['Juice', rand(2.2...76.9).round(2), 'Drinks', 'Wednesday'],


  ['Chicken curry', rand(2.2...76.9).round(2), 'First', 'Thursday'],
  ['Spanish tortilla', rand(2.2...76.9).round(2), 'First', 'Thursday'],

  ['Mash-topped beef', rand(2.2...76.9).round(2), 'Main', 'Thursday'],
  ['Guinness pie', rand(2.2...76.9).round(2), 'Main', 'Thursday'],

  ['Hot chocolate', rand(2.2...76.9).round(2), 'Drinks', 'Thursday'],
  ['Milk', rand(2.2...76.9).round(2), 'Drinks', 'Thursday'],


  ['Courgette Carbonara', rand(2.2...76.9).round(2), 'First', 'Friday'],
  ['Bean Burgers', rand(2.2...76.9).round(2), 'First', 'Friday'],

  ['Chicken Soup', rand(2.2...76.9).round(2), 'Main', 'Friday'],
  ['Roasted Salmon', rand(2.2...76.9).round(2), 'Main', 'Friday'],

  ['Coffee', rand(2.2...76.9).round(2), 'Drinks', 'Friday'],
  ['Black Tea', rand(2.2...76.9).round(2), 'Drinks', 'Friday']
]

menu_list.each do |title, price, category, day|
  Menu.create(title: title, price: price, category: category, day: day)
end

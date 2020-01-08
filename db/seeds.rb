# frozen_string_literal: true

menu_list = [
  ['Curry', rand(2.2...76.9).round(2), 'salad', 'monday'],
  ['Tortilla', rand(2.2...76.9).round(2), 'salad', 'monday'],
  ['Fish', rand(2.2...76.9).round(2), 'salad', 'monday'],

  ['Risotto', rand(2.2...76.9).round(2), 'burger', 'monday'],
  ['Venison', rand(2.2...76.9).round(2), 'burger', 'monday'],
  ['Shanks', rand(2.2...76.9).round(2), 'burger', 'monday'],

  ['Juniper', rand(2.2...76.9).round(2), 'beverage', 'monday'],
  ['Redcurrants', rand(2.2...76.9).round(2), 'beverage', 'monday'],
  ['Tea', rand(2.2...76.9).round(2), 'beverage', 'monday'],


  ['Fish', rand(2.2...76.9).round(2), 'salad', 'tuesday'],
  ['Asian', rand(2.2...76.9).round(2), 'salad', 'tuesday'],
  ['Tortilla', rand(2.2...76.9).round(2), 'salad', 'tuesday'],

  ['Sweet', rand(2.2...76.9).round(2), 'burger', 'tuesday'],
  ['Fennel', rand(2.2...76.9).round(2), 'burger', 'tuesday'],
  ['Venison', rand(2.2...76.9).round(2), 'burger', 'tuesday'],

  ['Almond', rand(2.2...76.9).round(2), 'beverage', 'tuesday'],
  ['Tea', rand(2.2...76.9).round(2), 'beverage', 'tuesday'],
  ['Redcurrants', rand(2.2...76.9).round(2), 'beverage', 'tuesday'],


  ['Roasted', rand(2.2...76.9).round(2), 'salad', 'wednesday'],
  ['Couscous', rand(2.2...76.9).round(2), 'salad', 'wednesday'],
  ['Fish', rand(2.2...76.9).round(2), 'salad', 'wednesday'],

  ['Chicken', rand(2.2...76.9).round(2), 'burger', 'wednesday'],
  ['Wild', rand(2.2...76.9).round(2), 'burger', 'wednesday'],
  ['Fennel', rand(2.2...76.9).round(2), 'burger', 'wednesday'],

  ['Wine', rand(2.2...76.9).round(2), 'beverage', 'wednesday'],
  ['Juice', rand(2.2...76.9).round(2), 'beverage', 'wednesday'],
  ['Tea', rand(2.2...76.9).round(2), 'beverage', 'wednesday'],


  ['Chicken', rand(2.2...76.9).round(2), 'salad', 'thursday'],
  ['Tortilla', rand(2.2...76.9).round(2), 'salad', 'thursday'],
  ['Wild', rand(2.2...76.9).round(2), 'salad', 'thursday'],

  ['Mash', rand(2.2...76.9).round(2), 'burger', 'thursday'],
  ['Guinness', rand(2.2...76.9).round(2), 'burger', 'thursday'],
  ['Fennel', rand(2.2...76.9).round(2), 'burger', 'thursday'],

  ['Chocolate', rand(2.2...76.9).round(2), 'beverage', 'thursday'],
  ['Milk', rand(2.2...76.9).round(2), 'beverage', 'thursday'],
  ['Juice', rand(2.2...76.9).round(2), 'beverage', 'thursday'],


  ['Courgette', rand(2.2...76.9).round(2), 'salad', 'friday'],
  ['Bean', rand(2.2...76.9).round(2), 'salad', 'friday'],
  ['Tortilla', rand(2.2...76.9).round(2), 'salad', 'friday'],

  ['Soup', rand(2.2...76.9).round(2), 'burger', 'friday'],
  ['Roasted', rand(2.2...76.9).round(2), 'burger', 'friday'],
  ['Mash', rand(2.2...76.9).round(2), 'burger', 'friday'],

  ['Coffee', rand(2.2...76.9).round(2), 'beverage', 'friday'],
  ['Tea', rand(2.2...76.9).round(2), 'beverage', 'friday'],
  ['Milk', rand(2.2...76.9).round(2), 'beverage', 'friday']
]

menu_list.each do |title, price, category, day|
  Menu.create(title: title, price: price, category: category, day: day)
end

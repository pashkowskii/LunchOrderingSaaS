# frozen_string_literal: true

menu_list = [
  ['Chicken curry', rand(2.2...76.9).round(2), 'first_course', 'monday'],
  ['Spanish tortilla', rand(2.2...76.9).round(2), 'first_course', 'monday'],

  ['Chorizo risotto', rand(2.2...76.9).round(2), 'main_course', 'monday'],
  ['Venison shanks', rand(2.2...76.9).round(2), 'main_course', 'monday'],

  ['Juniper', rand(2.2...76.9).round(2), 'drinks_course', 'monday'],
  ['Redcurrants', rand(2.2...76.9).round(2), 'drinks_course', 'monday'],


  ['Fish cakes', rand(2.2...76.9).round(2), 'first_course', 'tuesday'],
  ['Asian salmon', rand(2.2...76.9).round(2), 'first_course', 'tuesday'],

  ['Sweet potato', rand(2.2...76.9).round(2), 'main_course', 'tuesday'],
  ['Sliced fennel', rand(2.2...76.9).round(2), 'main_course', 'tuesday'],

  ['Almond', rand(2.2...76.9).round(2), 'drinks_course', 'tuesday'],
  ['Green Tea', rand(2.2...76.9).round(2), 'drinks_course', 'tuesday'],


  ['Roasted squash', rand(2.2...76.9).round(2), 'first_course', 'wednesday'],
  ['Couscous salad', rand(2.2...76.9).round(2), 'first_course', 'wednesday'],

  ['Chicken in a pot', rand(2.2...76.9).round(2), 'main_course', 'wednesday'],
  ['Wild rice salad', rand(2.2...76.9).round(2), 'main_course', 'wednesday'],

  ['Wine', rand(2.2...76.9).round(2), 'drinks_course', 'wednesday'],
  ['Juice', rand(2.2...76.9).round(2), 'drinks_course', 'wednesday'],


  ['Chicken curry', rand(2.2...76.9).round(2), 'first_course', 'thursday'],
  ['Spanish tortilla', rand(2.2...76.9).round(2), 'first_course', 'thursday'],

  ['Mash-topped beef', rand(2.2...76.9).round(2), 'main_course', 'thursday'],
  ['Guinness pie', rand(2.2...76.9).round(2), 'main_course', 'thursday'],

  ['Hot chocolate', rand(2.2...76.9).round(2), 'drinks_course', 'thursday'],
  ['Milk', rand(2.2...76.9).round(2), 'drinks_course', 'thursday'],


  ['Courgette Carbonara', rand(2.2...76.9).round(2), 'first_course', 'friday'],
  ['Bean Burgers', rand(2.2...76.9).round(2), 'first_course', 'friday'],

  ['Chicken Soup', rand(2.2...76.9).round(2), 'main_course', 'friday'],
  ['Roasted Salmon', rand(2.2...76.9).round(2), 'main_course', 'friday'],

  ['Coffee', rand(2.2...76.9).round(2), 'drinks_course', 'friday'],
  ['Black Tea', rand(2.2...76.9).round(2), 'drinks_course', 'friday']
]

menu_list.each do |title, price, category, day|
  Menu.create(title: title, price: price, category: category, day: day)
end

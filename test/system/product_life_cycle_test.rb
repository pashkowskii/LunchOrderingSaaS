# frozen_string_literal: true

require 'application_system_test_case'

class ProductLifeCycleTest < ApplicationSystemTestCase
  test 'test product life cycle' do
    # Administrator Sign in
    sign_in users(:one)
    visit admin_infobase_index_url

    # Administrator Add New Product
    fill_in 'Title', with: 'Salmon'
    fill_in 'Price', with: '63.72'
    click_on 'Add Item'

    # Administrator Check New Product
    assert_selector 'td', text: 'Salmon'
    assert_selector 'td', text: '$63.72'

    # Administrator Sign out
    click_on 'Sign out'

    # User Sign in
    sign_in users(:two)
    visit users_dashboard_index_url

    # User choose product and add to Cart
    choose('Salmon $63.72')
    click_on 'Add to cart'
    assert_selector 'h4', text: 'Already in Cart'

    # User go to Cart check and proceed to checkout his Order
    click_on 'Cart'
    assert_selector 'h4', text: 'Salmon'
    assert_selector 'h4', text: 'Total: $63.72'

    # User enter delivery address
    fill_in 'order_address', with: 'Lviv, Zelena 57A'
    click_on 'Confirm'

    # User Sign out
    click_on 'Sign out'

    # Administrator Sign in
    sign_in users(:one)
    visit admin_infobase_index_url

    # Administrator go to List of Orders on current day
    page.find(:xpath, "//*[text()='List of Orders']").click
    page.find(:xpath, "//*[text()='#{Date.today.on_weekday? ? Date.today.strftime('%A') : 'Monday'}']").click

    # Administrator check User`s Order
    assert_selector 'td', text: 'Salmon'
    assert_selector 'td', text: '$63.72'
    assert_selector 'td', text: 'Lviv, Zelena 57A'
    assert_selector 'div', text: 'TOTAL: $63.72'
  end
end

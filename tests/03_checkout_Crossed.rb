base_url = ENV["URL"]

# Visit the featured "Crossed" sock from the front page
visit("http://#{base_url}/")
click_link "Crossed"

# Assume that we don't have any socks yet
assert! page.has_content?("1 item(s) in cart")

# Now add it to the cart
click_link("Add to cart", :match => :first)
assert! page.has_content?("2 item(s) in cart")
# click_link("1 item(s) in cart")

# Start checkout
click_link("2 item(s) in cart", :match => :first)

# Start checkout
# click_link("Proceed to checkout", :match => :first)
find('#orderButton').click

assert! page.has_content?("My orders")
assert! page.has_content?("Your orders in one place.")

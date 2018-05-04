# Add the Crossed sock to the cart
base_url = ENV["URL"]

visit("http://#{base_url}/")
click_link "Crossed"

assert! page.has_content?("0 items in cart")

click_link("Add to cart", :match => :first)
assert! page.has_content?("1 item(s) in cart")

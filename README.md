# Checkout System
=================
A simple checkout system with promotions.

#Installation
[download](https://www.ruby-lang.org/en/downloads/) install ruby if you don't already have it installed.

```
git clone git@github.com:ScottGledhill/checkout_system.git
bundle install
```

#using the app
To use please open IRB or similar REPL
require_relative 'checkout'
checkout = Checkout.new
item = Items.new
checkout.scan(item.lavender_heart)
checkout.scan(item.kids_tshirt)
checkout.scan(item.personalised_cufflinks)
checkout.basket
checkout.total

#Tests
To run the tests just run `rspec`

-------------
[Scott Gledhill](https://github.com/ScottGledhill)

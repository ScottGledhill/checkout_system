# Checkout System
=================
A simple checkout system with addded promotions.

#Installation
[download](https://www.ruby-lang.org/en/downloads/) and install ruby if you don't already have it installed.

```
git clone git@github.com:ScottGledhill/checkout_system.git
bundle install
```

#Using the app
To use please open IRB or similar REPL<br>
require_relative 'checkout'<br>
checkout = Checkout.new<br>
item = Items.new<br>
checkout.scan(item.lavender_heart)<br>
checkout.scan(item.kids_tshirt)<br>
checkout.scan(item.personalised_cufflinks)<br>
checkout.basket<br>
checkout.total<br>

#Tests
To run the tests please type `rspec`

-------------
[Scott Gledhill](https://github.com/ScottGledhill)

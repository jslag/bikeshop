# Bicycle Shop Order Manager

This web app allows a bicycle shop to track orders for assembling custom bicycle orders. It's an internal app for store employees to use, not a customer-facing one.

## Exercise Set #2

1. If you try to load the root of the site, `http://localhost:3000/`, you just see a default Rails welcome screen. Replace that with a simple welcome screen, which we'll build upon later. Just have it say "Welcome to the Bike Shop Order Tracker" and link to the /orders page.
1. As we add more sections to the site, we'll want site navigation to allow users to get around. Go ahead and change the site layout so that every page links to the new homepage, as well as to the /orders page.
1. Time to make the homepage more useful. In addition to welcoming the user, alter the page so that it displays the number of orders that haven't been paid for yet.
1. Employees are complaining about having to click onto an order's `edit` page to set the paid-on date, and at having to type in the date since it's usually the same date that they're updating the record on. To make their lives easier, add a `Mark Paid` link next to any unpaid orders on the `/orders` listing. When the employee clicks the link and confirms that the order has been paid, the record should be updated accordingly.

## Development Setup

### Fork the project, and check out a local copy:

    $ git clone git@github.com:&lt;your_github_username>/bikeshop.git

### Install the dependencies

    $ cd bikeshop
    $ bundle install

### Start the server

    $ rails s

## Previous Exercises

### Exercise Set #1

1. Before writing any code, we would like to make a configuration change. Most projects we see use the [Haml](http://haml.info/) templating language, rather than Rails' default ERB. So, let's configure the app to use Haml.
1. Our initial requirements are simply to allow creating and listing orders with a few fields for each order: customer name, customer email, description, price, and the date that the bike was paid for. Since this sounds like standard CRUD, use rails' scaffold generator to get started.
1. Now that we've defined a table, set up the database: `$ rake db:migrate`
1. Point your web browser to `http://localhost:3000/orders`, and go ahead and create a few orders. They're pretty hard to read in the listing, aren't they? We've put some simple CSS together that should help with that, and stuck it in `lib/orders.css.scss`. Put those rules in an appropriate place so that Rails knows about them, and make any needed changes to the generated HTML so that it gets used. No worries if you aren't familiar with CSS, just ask and we'll give you a few hints about what you need to do.
1. The default UI for entering the date that the order was paid for doesn't allow the field to be left blank, which is necessary if the customer hasn't paid yet. Change that input to a text input, so that it can be left blank.
1. As the app stands now, it's possible to create orders that are missing vital information. Let's fix that -- make the customer name, customer email, description, and price required.


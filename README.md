# Bicycle Shop Order Manager

This web app allows a bicycle shop to track orders for assembling custom bicycle orders. It's an internal app for store employees to use, not a customer-facing one.

## Development Setup

### Fork the project, and check out a local copy:

    $ git clone git@github.com:&lt;your_github_username>/bikeshop.git

### Install the dependencies

    $ cd bikeshop
    $ bundle install

### Start the server

    $ rails s

## Exercise Set #1

1. Before writing any code, we would like to make a configuration change. Most projects we see use the [Haml](http://haml.info/) templating language, rather than Rails' default ERB. So, let's configure the app to use Haml.
1. Our initial requirements are simply to allow creating and listing orders with a few fields for each order: customer name, customer email, description, price, and the date that the bike was paid for. Since this sounds like standard CRUD, use rails' scaffold generator to  get started.
1. Now that we've defined a table, set up the database: `$ rake db:migrate`
1. Point your web browser to `http://localhost:3000/orders`, and go ahead and create a few orders. They're pretty hard to read in the listing, aren't they? We've put some simple CSS together that should help with that, and stuck it in `lib/orders.css.scss`. Put those rules in an appropriate place so that Rails knows about them, and make any needed changes to the generated HTML so that it gets used. No worries if you aren't familiar with CSS, just ask and we'll give you a few hints about what you need to do.
1. The default UI for entering the date that the order was paid for doesn't allow the field to be left blank, which is necessary if the customer hasn't paid yet. Change that input to a text input, so that it can be left blank.
1. As the app stands now, it's possible to create orders that are missing vital information. Let's fix that -- make the customer name, customer email, description, and price required.


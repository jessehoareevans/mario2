# _Mario's Speciality Food_

#### By _**Jesse Hoare Evansm**_

## Description

You can view products and any reviews that they may have.

The following are requirements:

1. Products

* The site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view.

* Site admins should be able to add, update and delete new products.

* Users should be able to click an individual product to see its detail page.

* Users should be able to add a review to a product.

2. Scopes

* The product with the most reviews.
* The three most recently added products.
* All products made in the USA for buyers that want to buy local products.

3. Validations

Your site should include validations for the following:

* All fields should be filled out, including rating.
* Rating can only be an integer between 1 and 5.
* The review's content_body must be between 50 and 250 characters.

4. Seeding

* Seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.

## Installation
------------

```
$ git clone https://github.com/jessehoareevans/mario2.git
$ cd mario_food
```

Install required gems:
```
$ bundle install
```

Start postgres:
```
$ psql
```

Create databases:
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Start the webserver:
```
$ rails s
```

Navigate to `localhost:3000` in browser.


## Known Bugs

_NA_

## Technologies Used

_Ruby on Rails, HTML, CSS_

### License

*MIT*

Copyright (c) 2017 **_Jesse Hoare Evans_**
